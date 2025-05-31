Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B44886323
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748710794; cv=none; b=AebG+KQoUgkFSYgITfJdPdvg9xYqXXGthsYW0jNzMFtn1/zvxw5oA05Br3R06ZloVfoB/SoxXMGJV4yVk4lxIoDNf/3Dw+ihDpBDyYxg32U+SN0u9W3muIff17e5RibK4X36zIFY4TPQ4ZpjzbUVW9HfOO6fyIvh75wUQ/m4xno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748710794; c=relaxed/simple;
	bh=8KPipNjrwzJt9C6br0MMTW53agQckNATEQqc5NpMT3k=;
	h=To:Subject:From:Message-Id:Date; b=df0pdq+j2pW/Exfqv4NS6Vu4hxbxPCx0pJIXHC4njxzc8W32uSBehPb4y98ddhv7amxsRoFrnRL43ReOYVLRgbp4L8KG9dK8h4hhabFnNC0qnpUIsGnbv+LgcMi2iHZic1/XO8QSSEYQ4GV6OPmG8s/nZabbFYYnIGZXDLTbQ+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/Qz6v/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/Qz6v/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A219EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748710793;
	bh=8KPipNjrwzJt9C6br0MMTW53agQckNATEQqc5NpMT3k=;
	h=To:Subject:From:Date:From;
	b=Z/Qz6v/UPsD9/lmhBD7+gdEB3cf4/uEIIKJfiSmsI3gRnB6ug8zpr7XI1LXljPh6l
	 7mYMqRi3IKLu+mLcX/rIIRGXhT9d2E0LNxGM+i6SRSPRXZf5otxe8D+KHMyqJ9GAve
	 srWuQEER/634aUVDcz75qYUS5p0VsT7pV7OZj2fKHZ4705hVDAQI91X0HbbSAxiqIb
	 NQVXAadTFLXcxriVI6AeKj056PSsLBzxaA0lMGz0+EAgRCPTyNjo0wtxpYpcW2loH9
	 apJYcwPXl3IqeadfQka+bIBgszsPOlA46ptWP9r5WQSCxSOt/9ByIkLYC6g0z4fH7I
	 luU2uTq5SYisQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B7C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871079358.1862.10851140753444055839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b8d9a9396c39ba067280c081596b2e694f6616f0e40f5e098a4c866be654fd
Date: Sat, 31 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748710793

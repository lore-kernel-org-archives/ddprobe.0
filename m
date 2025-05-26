Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDD218B47D
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748276394; cv=none; b=FfHd2GK/TUAQRJkwKIdDLZ+iOvEmfO64bRaXVNwelWTEnh+cbJlLa9TKD9bn1TIFinkntkNl5sMmxjI5HoJlP9fz26zod5EcbTeEW1I3ZNsFnccAEjOjJdj3S6+P5MvywYmnH9EwgIW8G1yy00ZMwE+v7KTwYKZpp+jGAtnEMMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748276394; c=relaxed/simple;
	bh=eDy83oVNRZ4NtQo4HPrqoMQQmXcgZvBLd88MZZTDT/Y=;
	h=To:Subject:From:Message-Id:Date; b=bT3sHTWTNLJQ/3n5+pADdJhKX723+WKM/4AHMVo1UetL9wKYf5/FBE42Mo3e4YgYAch2T9GPoecrGTSkbo3DqdHEYQ+Jka5YQimlNHQi1t/BSfqeoNMhbF7uvwFd8o8h4iXcJpBqabba1Z2YS0l2jIWEgdN9lh+mcEl/gXYWnVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrCPa0h0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrCPa0h0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E011C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748276393;
	bh=eDy83oVNRZ4NtQo4HPrqoMQQmXcgZvBLd88MZZTDT/Y=;
	h=To:Subject:From:Date:From;
	b=mrCPa0h0lx1wJOkUTI5NX0XlVYnam+W/UfdqSz3eCgOZCZsI4+0uMRyYtirS0TisM
	 Qjqela91tVNfjnNjK5HWRTaYefqYcsTpF/27n9UuLkhCijS6BDSuulxfqmGUf9zz+D
	 bTGRTEYMmMoPr/IizMYezjWv1CWnMgZQjSGbJV8cAWfwellN4i7kk5bG5cLw4m6R4B
	 3yDkF5RcvZwEThhPT8tKqJixSfOaG7WGcEks0bA+2bH+VjA6I9emWdaAwNhXxDya/D
	 UcbpSj6kWpZe6ZLSmDE6xZB5AzWt1Nfbxk/fWgqKWvitBLzS1HbHVoztU/pGwGu67+
	 407YvdBBFj+jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED92C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827639357.5107.16855840537050588204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379fb037c3f75cffaa55c88a0e9644d90a60cb7761159f378686bf0508ae63b1
Date: Mon, 26 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748276393

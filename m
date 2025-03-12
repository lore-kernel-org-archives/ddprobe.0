Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D09D155333
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 11:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741778934; cv=none; b=nTfanqX86gtXxTNgZKJsqM52flNEgPhNZXOoqhlXl+9ZnAPuTsmc8oD1n9l69U/m3dL0Sl7PHpEHPOj9IfMWwICVahhrxRpeEXljP4XZEIyQC+LA2BMg6YO48fmJbNLSjnlc+l1jARI8SJ1AUdmSACQVeWn9wk3a+MZf19hR8DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741778934; c=relaxed/simple;
	bh=OgO4WQmeIZYMj9xHbBkEbQKA7QQwxTY/iGJORl1YIx0=;
	h=To:Subject:From:Message-Id:Date; b=uYwmkNlaxSYomjIajLE4EVCzyhE73zRAqZGG+pGMSjlnkCuQ7R2bQMKKa83az0d9ciVLSGVdTHtEqsU2ew1a2rFfPmVTLMvh5miTA7PwGjwOoRuz/go/cz+yK1cpjxAiW1acgzW7t0Jjvvqmw7bTuhLW0fr5r7914QndSuAlkH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6XjwJl6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6XjwJl6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A952BC4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741778933;
	bh=OgO4WQmeIZYMj9xHbBkEbQKA7QQwxTY/iGJORl1YIx0=;
	h=To:Subject:From:Date:From;
	b=W6XjwJl6OQq/9uA9kaZVXA9yvFoMK/XC6Ea3swXW79a0P8zGIjs+YiMUjvHEkqz7e
	 qaMFywuuevJgS5CqOjHYW9knFcMMRMUWA2YURqd4UaHLAJjrsWsN+8xeXcF3vVVQZW
	 fk3U58krYMKE/VbTWJDGRz3EFV7TtlsP3kCuuUrVTTFqt1NEdDTkcutnwTk4xz5wRj
	 vXkn9ptyrWQ74zoH+TkNmSJxPeqEV163ZOQ9ggn0IueZDCUBfpuXR00hfXjZTo/eWa
	 S9J3RCxHJsFaYZhSg84fGisICST2Xh0b9QhiZ040MyQcB4ILJAw0r2cjwYT6RHTJyd
	 tu2638A/ryKbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FBDC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 11:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174177893359.13159.63348878243354461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2614c0e4ba080f475405012f3ff63269b9b4077924174afa5498b61b57d9186
Date: Wed, 12 Mar 2025 11:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741778933

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D8729CEB
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747456794; cv=none; b=RY+uvA6puMix2lGqBi0oPIyhrVQmgrGv5gPQkSBDKfk5D250cpxrLXK0s3HHoCb08y9Z6wDqX/vPrNnBHsxdeFSrUX98N0C9H6cmc/mbU7PERewyrUEVwtSYotpXfrvN9SxVoBqixq5m+PGK/mD051jHtOg0/Ee7qwO9pFf2T/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747456794; c=relaxed/simple;
	bh=oyQpXkOZFgQHmFdmKLtrmJnULc2fqL55d+J4uni8sb8=;
	h=To:Subject:From:Message-Id:Date; b=eG3Dhqxi6pXoh67s08Nhqz9xz34/PaPhEXRmmC1TzEsKLrbADpmOGxikxTKwIO5rxrVEe56JN1pvEJCQoAtCgPg49JiVdMy8fnJ74omjFd7XeYGfI1ROpzITwd65UhOA5vwGrf+6J6P1/QoYOX4QX+o4/2Je5x5kO50l2PLX3Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmYDGC/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmYDGC/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84ABC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747456793;
	bh=oyQpXkOZFgQHmFdmKLtrmJnULc2fqL55d+J4uni8sb8=;
	h=To:Subject:From:Date:From;
	b=MmYDGC/7y+HQYVqhOr057HQouOhXUznYPFq7MTxVQPwlW+RcFVZRB058RSaOCGK0o
	 cq6DL86fTyxU9KU0USiiCiCAvLv16SCayHOV+Wo2KsdBIh+qyZNqGj0edgCjat0+4B
	 V2ATPsxOBJl28bCOgp8X3EhBH80G5j+InNYbRaSLJs9KW6HKp9xVyT1s/kbDygeLcc
	 pJDjadFkFrCOKxJsbpzJBT71+I2pcWNBL1Ar4PniK87kDiVKgxHcMwwVbA31qCxSXS
	 RsFqZWLVOxuTllJL5oXGz2Vzy4TwQt4iueoyAVEbxpKSt2fkRAd879pd3JQ5wyu6lT
	 3/x+J9mygDQrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ABAC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745679359.23351.16245357089399527595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026ab36bd39bb2cd98d7605217be413d5b8ad274ccf939a28c0b4a98adc2b6e1
Date: Sat, 17 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747456793

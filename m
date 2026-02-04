Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBE738BF8A
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770234834; cv=none; b=KU9VJnMcZGylZ22jJsyGTDphxF3jNUJ57j8elRX6pp2aGxgzEbDwcMUWzZkbKkApXUgHKbRQwuT6FAAR0sDfdr0v5Qj7VV12WuDvsmhwdRs8s3T8z4fzF5CQEszAraJdBdjF93uAJYwNi/inWtKe6vk878QjyjFXJk4EHjtF/j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770234834; c=relaxed/simple;
	bh=DettDtUSRcFIXA+1NVnuc5po3odfUjWKu6r6uv4+dlU=;
	h=To:Subject:From:Message-Id:Date; b=Zb5rucrCf0Gm3Gt+udHkEBZRCwYr34VjMfWrW354dxJEGvmuukRX4nirLYOcZiCZiFEdmhtGUxceZTEqnzrv0z43z8GMO7c5/404T3N2uS3KwqaONUPeGfkTmmf0Fj2nRkSpEHZ73FJIfd/rRv9LWsqgOsFpFYgCC+RuMNGKpiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+QG+Pon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+QG+Pon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFFBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770234833;
	bh=DettDtUSRcFIXA+1NVnuc5po3odfUjWKu6r6uv4+dlU=;
	h=To:Subject:From:Date:From;
	b=U+QG+PonPCNMwj8giryE1JPNqrN5CeJLtLIhShONgz3mGPZG2i2npsj6KZWW/G1fC
	 neLgVJE8vqcyzIz2lqvMsLQyRCfd/5fGxH3FytAqDxX4zfk0BsCIQmXEoXSjSMtk3K
	 w+BP46xZL/dmPeCcxhPvoa7QB+AkPrLH/ZvCVYDsqPn8Ds9SvN5QMv5L2EO7G9kDU9
	 2wXbq51rTgebfX5LMYC0gAnn9PkxMkDFpkHvUS6P8G2pGeZMFh4yDsFvxTYyBaA47A
	 Y3emUPreI1rtX4a7ZfpaunhPQAoGOrkINATEremFQbGdutwguG8TH5XwYbIkofFI5t
	 Vmhy/OpgyXMAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B823EA7942
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023483362.22161.8173494086577717295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696b697b81e99dbc53325cb6b2302e955541f5561fd99b05b029c190207ef763
Date: Wed, 04 Feb 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770234833

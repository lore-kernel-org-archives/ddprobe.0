Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1962C308F04
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755274794; cv=none; b=dEgR2v6zrasho/wJPnOB8RH8dzDeUxrdjO1ulF0RjMETrru1evrEl3F2nbi0ckqJF/GV3ShwdW3cMCopBL4A4a6GmrJpzFibB1b1hLq7ynpbr8sX7hl5czfHe1vLPwLpdcv2aLFsgawaHGIcKoEO6b8iapyOJ2FKKqBltcnwj4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755274794; c=relaxed/simple;
	bh=DzODHQg6ZWMchUf0LZVUqMogblakJ+wGfU3Bl1K62/M=;
	h=To:Subject:From:Message-Id:Date; b=FsSahAqCck6ZVHntVGebaPGkl+FoMQvTNGltbOcLX5ofxv+OFWMgriy1E4e368+N9WS7Fb2sIridLLZTxP7f1TRVrFMuMCcUhFIqn7FquQsuvEz41AadNUCIy/XdUlP+Uor778W/5Oi0YdlZyibx8BpsjEDqixdgp30nTTH78WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyYn/m56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyYn/m56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC12C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755274793;
	bh=DzODHQg6ZWMchUf0LZVUqMogblakJ+wGfU3Bl1K62/M=;
	h=To:Subject:From:Date:From;
	b=AyYn/m567R1Nz4F/hN43ic7/vrxLK5e2B1NeFvypIwDm6E4zM5nagnZ4QJgq68VM3
	 lSKfIC0jVPjWNjZNdNhJ47ZzpzmcoiMDNIUe2d1ILiCJYtC9EzSleMszYoM4ypAwK7
	 9VPQIuS4+UMNzfNVvHCtojeikJBUdrlaHRv9S7h1y+Iac/iERncptCdrH5zkjDgU0s
	 Dac2eU7PUyaQnif1wVyUFLeEu66zKKvOmLQ887bnZtGev0+eiLq9koptiah5WtGDiu
	 iVfRaCW2e1Lrt6dYDyQjcaf3WtbVJTJt0zGy79Gymyg3DVYUMwPnbps1DiQrlPbL6L
	 K37d7MHcsVNJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9796DCA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527479361.10262.13308693371968760594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa194cdc3ea5a647c3d83122c64d0c11711dfce6e3fdf460a0d712cbbd1ac51f
Date: Fri, 15 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755274793

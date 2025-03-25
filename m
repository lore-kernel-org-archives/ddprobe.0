Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416061FC7C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742885994; cv=none; b=e3Y+j/sH04WCe9emwYu5bJ7K+7tEH6hJ/RvYfq5XOxMnQGvCBl+3Pur2Co6qqw0pxPr1NyusR3HfHjQckV8fR8QM7dP+rP2nVcezPsXs4d918vyOxdY2uqOfY1HaVZ8dhFIQ5ed3vXCIN0v4D14yEBzhXEjHnVpZDfGP9O9//k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742885994; c=relaxed/simple;
	bh=af5At/Pbb/eZINZ7tdxxsfTdJ0TtN+G4NxPNyUC9s0Y=;
	h=To:Subject:From:Message-Id:Date; b=RbNAXabZ8DDDT7Msi39I7H32wZQc3V1ZgkTIB6ryUqg4kZdDc21O6pq36RKctQX1i2azmHFFpg+Q8GbcL8jTOmkX+bGA+AyRZvAp6FxJbCSBUA5LFiQNNUzIdykK8Oh3y4J0dO6kHfsf1iki/MKG3jvdAfmo1p0yARAQSGsCkA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxhLXQ0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxhLXQ0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFD1C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742885993;
	bh=af5At/Pbb/eZINZ7tdxxsfTdJ0TtN+G4NxPNyUC9s0Y=;
	h=To:Subject:From:Date:From;
	b=oxhLXQ0/DRghh5jBRU9AYysazX11KzwYK6xOPt1FRxeK/8mWvVNjSAdLaNkjPkY3S
	 CVnadI3hkJvomyR18B+rKZg7Of/dV0OEpuUw1my1vclceYW7edlrFidDihINggjTQE
	 paiCzyYrzfoAXQKMdoKbrT8tsB49zpkR1ZDZo8/RJxOB4u0RDMsqqSdl2Ay1Hq5neC
	 7gx/Z/OACpPdnUi9WwNGPy7/MukXqIrWy/qaOWfJWEyHAB8vQ9b5PmF68jRibDaV/M
	 luC2ywR5jjevqyoTdiV5Lt4JdbyYIdG8+wbO8Mc7B4qXNeEmMRkcKsRGm0NROW2ez8
	 RcGK7BNnVI24A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FE6C36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174288599359.22047.18058001296481199542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51f405843062e4fbfc5b0969f5b6092d3f29b9f616573d9a85cdd8a6de91d76
Date: Tue, 25 Mar 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742885993

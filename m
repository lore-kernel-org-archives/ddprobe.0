Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F8E1FAA
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735172754; cv=none; b=ZAHFPU7ISNR5FaFhZVPA6cf0Ihw+DJvMWyPSLa6jjbc+lCU+hp6KXZI7yf1kLjjmYO7wjNZ8tdc2o4CXBEJ6m5AQuiij+qwQwUt2fQbPtXYV2BWCPq3oYGa4g6i1XmyKtW5+rkY9DCoCSQ+ZNbTBsG9uPdPaBaM1WDTxpIwCGRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735172754; c=relaxed/simple;
	bh=N1+MCZFp6wx0cbkkiBoU3FUdeLEhY4X2qrKg7OMBXps=;
	h=To:Subject:From:Message-Id:Date; b=NdCwfjxOcLe+ceGzCjmR4JfRqyIOhCttGpXd0yk6IyA3JN2F7CYK3zQix6ZUsaNSFdSm8erf8kV3nvFgGj4XL0S/+lzADySJg8Ht4AYfCECB4DayD27EWFTw5Csx4wK1244NfD1f56OCEI/yf1sgUnXV16//u5kaHL/DsQso2Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGEfU137; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGEfU137"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4248C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735172753;
	bh=N1+MCZFp6wx0cbkkiBoU3FUdeLEhY4X2qrKg7OMBXps=;
	h=To:Subject:From:Date:From;
	b=XGEfU137W5fth5RXOpFYcyM2N9MdO3dkVqqIDhaEkrBmuTSGjyFGlUnHHAS/UHMjq
	 5EPIyWTGU83B0yA8/m7hX6rLsP6+fytChJcYHfhMXdE2AlyVeeTqQZjJh4msMnkLiY
	 zIAdUwUxp2ehUsmcALD1CnUcVvEspealGe3PueEQ2P76aEv3pmEaZ4mlh4lPTgjaua
	 +W3CG/ouk8rC8Fj4PzXzGdVCXAy2kGZWPum/4QhIQNmhkXkcXq7Dm/9CZ165pXoZRA
	 Cl3WJtX8MmJVRpNqy9Jky8crvjTPW/Ew0/pw+/Jw3JrMnLtqDRw72TwSKePn3XUxj/
	 98bRVuRbIGPFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4D2E7718B
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173517275364.30151.7205624934921711334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 469a567d24d36b16b06843fe327bc6580dc74807f13c57b6509c7f9038ba25db
Date: Thu, 26 Dec 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735172753

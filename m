Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6F43E6DED
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778173054; cv=none; b=ZGVEslBvVIebbUPBP8OaxXN9IJM883ercHfzqXAoCs0YNbcwII+/82QmwCz4MMb0h/57YlDHXJsLzXwQA5XbNa7kvjG6F3IEPUKplU8u1FCf3fxXO/cPOMU/GcCzZHFAprADMOu1ayb4Rkk9bD8Z/SVes+0/5FrM1yHOgtiRgW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778173054; c=relaxed/simple;
	bh=BJt2QujZPAH+4Biw/Lojjy7+74+iHsuzGN1Qfk7gIa4=;
	h=To:Subject:From:Message-Id:Date; b=LQl4OZV25n0w36BNNHSNWCkaG3Sw+5UT6jDQm42lAWGPRxking8ZIfjl++7716fKHMYRXwk3Cuvz0iCPKXcyEClGaz3VbrMIlIfqMyhsgzAFiRSpfp0ktwEtd0ueq4lcDQF7ldRdrEcpIHLzZ4X3mEgT48Pron+u0nsIsyOG4N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrOYaF+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrOYaF+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99D9C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778173053;
	bh=BJt2QujZPAH+4Biw/Lojjy7+74+iHsuzGN1Qfk7gIa4=;
	h=To:Subject:From:Date:From;
	b=OrOYaF+ymYbzFKw5YkKl+DYw4Zy9pTtZJOK+J4EA1TRQmzCALbD4yVSZS3MWzyjnl
	 0NJEMDp6tsN4Gi58hXVAKNtNownoXWJ4Ld/+2vzRm86By9eCKiRsxAv+oGBT9ctqgg
	 MvMnp0cUectKA533WfVdQflTgKMlNKgnNfqHX23HccRH+KZr/Bkg7N3Ur3DMRkeXWs
	 OnP9Jf6BhnKN0CUaarbOYlAXTwc652jLV5nnsOM8fwabSs1UblVlG8MgPZYPolP9zF
	 SekurzjBrgkFHzP9z6zEL/nJB9X0EC8fDjtFlOCj4BduCyIhxiJMwvmdcxpQok1jCl
	 +IZWspkbdp6NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB191CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817305369.9731.6207761358722970927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beeade46a9c84090211f5f93127cb6b14c7edafa209e0ab6713c3348c54b18bd
Date: Thu, 07 May 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778173053

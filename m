Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6B0313E22
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760514595; cv=none; b=F/2QXRmeqwW+qBzXklwsN7f7Ne9yMSYC2UzVybR7HX9k2PXBeNGQSuzrI/gpLTKsnhRdXiswmgW7MK5oMRckycUFRveFQy6Nhc/WqI2xJYzoLaY4Z03FGTeP02Ct1til3MHhQftefRz3oUuv7j6t1uBElizwuz1/d0Nw/ihOJ/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760514595; c=relaxed/simple;
	bh=ObeOtxqH1j5+6BBv7i6sYWKYQRv0TkfULOKwdddn/h0=;
	h=To:Subject:From:Message-Id:Date; b=W16dunHLx1iRomB4wj9mcYDgE+kY1ZRtAKK72c+dK9EDlZZKQ1PMNJAZj7GbDRiE8YCGt8sGSg6Icgv5j3lzBOKE8zcE7QMC4nDwD0TXSjxXw19ObReqsU5R+ygAJI7MNBNM4h4BJ0+7X5iJ35Nvv4BEuo8haf4JkIy1lRZYycQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=US5EQsYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="US5EQsYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B7C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760514593;
	bh=ObeOtxqH1j5+6BBv7i6sYWKYQRv0TkfULOKwdddn/h0=;
	h=To:Subject:From:Date:From;
	b=US5EQsYFu8yau2mps4U++2KxeJedcCtArvFVH6120MdmjWEpcf+8AbsllHMFBI60A
	 ivIvJWOvqOChr0Tp/2KpKfdTLewLba8CVNXnaOWf6K0vOma1kdwoCz7TN72qHd/82z
	 uhPMAb8upc1T6PBJ00qPJIKSgj+e6eFa2VDP7mRcPWJBEAPU6NT1hc7Qjbz7UG0Dyr
	 7Y6m1h0aiXxzJ3FrP//pxZG22Eb+zPXQ5iohPb5NaTyuVLoV8xWVy2p0b8cFH6Ehs8
	 Uy69i+nh36pkyUW05R4k9GklPgb/ZQTmdo/G+32h6HYKDKNPcsgubpfvCTSzahR2hK
	 CT/JhwO+bBN4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F221CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051459357.6047.18376640484719848811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8afef37410ad22a0c5bdd6318fd0b5dde8d43ec0d348fa577047a6adc0c4cf
Date: Wed, 15 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760514593

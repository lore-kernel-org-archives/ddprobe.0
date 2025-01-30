Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05191922D8
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738226754; cv=none; b=MxCQY5Rp6EJKaIuPULd1qXBQQtObqM6RRHbfPfZME3QW12Yfgaz1OMPq6fxuM8+fDCYVx7dmlgXXv7GHDbPfUSXdCBd3z+Mjil7zedNy76giPeKL8MQ59f0cdPFXEzKNd8PlpVvHSnz4jME4IYb2l6ehtYEArYJSv7Y25IQfgW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738226754; c=relaxed/simple;
	bh=BDQ2Agd9at9nMFBu4u89GKys6DAU7mRLEWmB/Xi+ZNc=;
	h=To:Subject:From:Message-Id:Date; b=ESPY2V0aaFNy2+TY8ZPBxRiLO2NopWy0oBC2lbtbgNNmITwtfg5cJeNB0BN0GdWkTHfPtIAhY6nhq2pvA9rZYd1LsRw1rwonvWaTWV6wV3NrMy3USimng725dQ20TveTyN/w4ktzRUbpVqal2SlcUY+Ivzd2Slmc69+RJSDoAcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEllJGZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEllJGZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7D4C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738226753;
	bh=BDQ2Agd9at9nMFBu4u89GKys6DAU7mRLEWmB/Xi+ZNc=;
	h=To:Subject:From:Date:From;
	b=YEllJGZbHMmUb4QF6BWL6fkIEonxbyGSHroRpYBaP0pLt6SX6E8z+OsDXG/OSFfYv
	 6bAS7SS4HyGhlLslAiiALvgNnrY3kelKKWiITPYU2W2uuaUiRGp6N4hvfiLlN6/yWB
	 YSQjoITIm4FhGPqt+jgPGW173gXP4j5FUSjiaLd6mDgkyR1HOuCIh1k/MVyuIV6l+T
	 uY5uoiUf0GSJosiXA9mVR3V7qH0VRtH7WN3UmRG6geWCcyOJGHe57Nka7sCDkTWc9L
	 0dWdMYQDGDRmpvnjAQqBAbYaMqfL7uzl6rChcDqX0DRcn09FU/YroPQQ8JgWbuMxSN
	 WztZLg4TrTIAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BB8C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173822675361.6252.8019684597771054292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc08a72b77cadc74f30ce244e82a7fb5b9016fe4883ce1e670779160dcce620
Date: Thu, 30 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738226753

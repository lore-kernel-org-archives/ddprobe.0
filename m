Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483E52D7DEA
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781340994; cv=none; b=Ls2yoNoTznIqgd0Ma2i+O6QYUy0rVK/jEv2ga4cv4eb6tHs/8YrhjA94e14eCq0/NkiIKVi0bAkukMRawX7d/C5QPtacUgJsU5+K3HEe7kFirzZ/yzEr1h10MIoNQy50EjijvogTscIu6g2OQjz1kVpXkylIbeV8Rtv0PPUQUes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781340994; c=relaxed/simple;
	bh=xYzBA9y4Pu+6DM9oF22Ra2XOxtkOb0xWEPqtTMc8f3g=;
	h=To:Subject:From:Message-Id:Date; b=Vw+jbIjdfAdLrPuIpfD6lfjfuDulT1Mfl2wixsvX7zNqsrZoboavWOoFFH5L4t/wSx/04iF6BVmpTwED4d/F16H88DCI+9+8Y43Zgf42tKo236OCMijHgOmPR681r2oApov3eK5gfJOylN+y8u/jUyXUE4Sur4Xemyxrzpjo4EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGEUlN6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGEUlN6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C8BC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781340993;
	bh=xYzBA9y4Pu+6DM9oF22Ra2XOxtkOb0xWEPqtTMc8f3g=;
	h=To:Subject:From:Date:From;
	b=sGEUlN6mq/DxbPPfJ1+TAQ94TwYOktJkJOguDZTt8h45nUtcG7sULU/6vvH4o3uW+
	 mWvTGGzXlTYLxFLjf4ai5K9MoH3fTEIMgGfk4vlc9Qy75S4Acv9cu+wL05ptLndxf0
	 Df/SixL823Q9FW3y4zvr4TjFw0ETkbPC/Z/yjLhOTT5Wz5copGzeQU/X/mE4opkvjF
	 KRBVnrzrw6fwyZd2IKOaOinWXKGgQUU8/mFu5TSB5DrM+HNCmTYBtI3sIuSq1qwT8N
	 IVTndi/LUj3iHwZgjKaDMkZSwSN4x0AHKJ3fFXQ84HdoF5Ger52l/HXn2JhvDQ/861
	 w1LviPAcw9RPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3F8CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134099368.30166.10084781558093397071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d6eae450b164e6877d2a055a9689c31c6582aa5f8a6a6979ada4bd45d9ccd84
Date: Sat, 13 Jun 2026 08:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781340993

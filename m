Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20D984FC4
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709806697; cv=none; b=fJC+DQ0DxH/PtRHSgo/HGewXw1F1m/GgNuzdRP43LKDT4Hkot4sOEvRpP+RcnzFMZ1bv7/4joo2BCmbkw7Kan0bLWpqK8+MPUnAswTU3ZuSeh41v12+MPUBiu+sVDzDGX5u1jUjMxl/a2I7mrIGC7CChtgNega5/yWahBPmbb3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709806697; c=relaxed/simple;
	bh=YGBnCCZfXUN0O6ugFaS2UEJ2OlopRciO+ApEEGkFmV8=;
	h=To:Subject:From:Message-Id:Date; b=pllDda7zcj3DRvxD8yu2vAmG1eYUOxE2Ddo0zy9dPOtH3HVKY1ghgTAYnFcUmYSd6XxoyuN+wY32GCl7SXAPciNL7D9LyoSMFIvNOCsSiX1kS99XBzvSSgPzyvnYWQL+HjzTlMp2F96I//ByPo5Zrvum5J430JyYbAiKy2SFM1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGU4mjWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGU4mjWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767A6C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709806696;
	bh=YGBnCCZfXUN0O6ugFaS2UEJ2OlopRciO+ApEEGkFmV8=;
	h=To:Subject:From:Date:From;
	b=hGU4mjWg1kNHqc/jwHJtWiW5BvCpHV6e89t4ZFfMbl1NmwHWefi5aEcLJ7eTGLtCw
	 mKczBdRU5G4PfxF0B3/Kb+8Dd4MOyz8G4/MW6Z5bj1QDVeFABOCgTD5kET9pMMEhLd
	 18ig4f7Cwy28QfQrhLzsxqnDkSAuQT1648M2KpJPWgOQjlUaF9ArTh3QuEhyWPtsSC
	 Qi0IvfHaR+M7nhssoMNodlOHQEfqu8eZdgw4btpJ/n9S4GY0x3vIFfEv4A2IcPaWb7
	 JhAY84Hgb55VWXezeB0PN+O9p2cVICJjAolLvHZ2WhyKgtSJctBPcjTJvFSdySuHqY
	 vxLNHdJrjRC7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E222C48BF6
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170980669637.1220.18217434365008237055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5e030cb7b12da72a0b35f4c812fed91b3a88318abc089483375d0532347b4b
Date: Thu, 07 Mar 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709806696

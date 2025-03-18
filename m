Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485CC38FA6
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742282994; cv=none; b=CwPkpqOfZXhNchPNkrdcAJzUvAKGcaHWVAP/V9k2BltWUdDr8RxBcPh/qZgfFTIWGXADWew/TKULEJADs+5O0riboFMu51PvonYsP/6v+DROBqx37FoaqzFM3NwmSMZEtIGlRS4rtI07xKBw4Qoh7vPPMm2yq3tnf58efBgWBlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742282994; c=relaxed/simple;
	bh=1ckAnW7JaXA4z7Kbk9Hh4bE1C0GMMeTCtJOooSj4bXE=;
	h=To:Subject:From:Message-Id:Date; b=GdryQc0EIKRgWoSFeqNzpUFH99db1kk3JVBv6n9/4zleZdz3yH9Z6EcgbwvARe9dJJ68MrMwSWdI2K+2JSOZsbvlRGaqV5mt5l1t/f2gDtACfVxAt4/vI0J+jfMOqYOq0pOEReCcb2GXMKTgULmexFfrv2rXtk9N2szBnMIVa24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UubZg7fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UubZg7fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1632C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742282993;
	bh=1ckAnW7JaXA4z7Kbk9Hh4bE1C0GMMeTCtJOooSj4bXE=;
	h=To:Subject:From:Date:From;
	b=UubZg7fyb60V9cD28x204+2eWhGaY+HQVmiTvvTF6VTCuAMtQ0Hk8MqiJXNtclKf7
	 cu1mtEm7NGhYX4Pf2W0fAP818KpPnE+W/s4NidT5ApVgl7+KCWe0UH7z05I0lQ10NO
	 RaqScSoEDz2qOdT/j2Tb0SVnr8V1KqXz8BcSfwlQmIvRxV/Z1IN6L7mMGDFZSly1ei
	 WVtszCkop+rQdh+QPmuSAAotNphONDor0dYLn5VsVMGpF5exs44on+m8tfzPZBMM7f
	 ur1aHyaDj2i9oPkYeQiPpyKaGbyO3XR8eVD2Df69PnoxAhrIUCXaJ4S5BmbrWT3Egq
	 epWwWOQYs2vxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAC4C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174228299367.14273.11883031882676761626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ab4ab8177784130a687256fe5620ec56322f182701ee9e10482807b0169ad0
Date: Tue, 18 Mar 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742282993

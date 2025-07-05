Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EE3347D5
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751720394; cv=none; b=qriBWjp4tnK3Cypa7+AjnkQOqnULuEeVOKGscKfPtcEtALfiJPynY0M/NhFpTJPTBPjT/ihpXzvzoFlo1UTQ1EQ4oyCHDMCmOdSivshYLDZnp+4FNI8vi2brgvrZMH2fWoI8l3AgF7ceYzwDKwOHltbPWl1TKUihl21zmfpPiLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751720394; c=relaxed/simple;
	bh=78w24f1IupE49xt1gqwHQSu9XtEFqoCaCbL/nn7ssnc=;
	h=To:Subject:From:Message-Id:Date; b=O5UWqqZUNSx9fNEdC3nKWj/u2AUHGhCnp15J0A+Vop+UegdlaLdMJ84qoFTbARLEb/JQb6b1PXv0zlHDXUea1Gx1gsoYAUA2d57PVXMlgHn4s5fy7lks5xX6aQZraqcw/blmC1CIkdp3nn4YeDA2WRRjnGHL+Eon2DqiLbEf9II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWY08XVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWY08XVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E7FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751720393;
	bh=78w24f1IupE49xt1gqwHQSu9XtEFqoCaCbL/nn7ssnc=;
	h=To:Subject:From:Date:From;
	b=CWY08XVuOxDDuA1DWSQdNQQ9jFq1/kVFKJvf76ImlBdHedKQ0YsdM8ijLcPvog6EE
	 xUqfzsjhcvN1QDmnoNWcEvh2L/IPGaoatZlZLMpFWhgL+pOG2wqYVeq4f7dR56Eh1T
	 hOaUU4zrVLF+1ZM5TOilhYsYfg3mA+XTdLoMFd/LnitHtoClbaLDHhptjq8xyGzmbe
	 Ms1MNXNH0oz/j93fCdA5yWl7XlRzVANjdYpQv47fQXhvMKa7TrEK6rWmUnLag/Kyiy
	 NNo+WVmnc/FPJVaIic4SsfjhiHG5k4NhFV+raB7JkCG5tuJ6Mb+AOkxWNBMDGBjXpS
	 8uatndJah2uHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AF4C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172039357.25728.6608942389403209448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea512cb8f48217ebc99d8009a8539d4fbca7ca34d96db2e0c95b1f04a77d4d3
Date: Sat, 05 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751720393

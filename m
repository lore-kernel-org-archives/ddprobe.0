Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101B823F422
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771012494; cv=none; b=ONibS78LRfJw3o9iM103dRaFrikva9JCWSFR6dwHc8J4A09QkU/HHse2xW0165Z0y1hcV6GoD2CVZRXhQr1i7hoNywDvFqAVQ1E2c0ibK5knJZE/W4MgXjFJCizsyotngbrSWY0I/PEGe5MAF2vdDxNNwmyrSVIHLP3VWZYxjuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771012494; c=relaxed/simple;
	bh=9FDi7WMn6Xmh1LZoBc5YaxW71IQCuYYBtH26Kk51yW8=;
	h=To:Subject:From:Message-Id:Date; b=eLCdot4R4Kgjvp9VWvn2GVXB3M6umKlC0B3r/QiBb8Fntcwa1Hnx57G91FKCZ6B/5PDR18BrAZoc14kaYic2foxVT0bheprtDyCz1iL3UCjC3E2Rj8vN5Z73l7mcP2tJkCj+9VXgafLxbAUl/PDlZXnRAz5TbccKGXQ35U1FkHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlTBf3s2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlTBf3s2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA58C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771012493;
	bh=9FDi7WMn6Xmh1LZoBc5YaxW71IQCuYYBtH26Kk51yW8=;
	h=To:Subject:From:Date:From;
	b=dlTBf3s2tjMh/7/H3oSp5VAI2aOpFgTi7EPK/R3QPdDc0G58hFVVZ1/iFa/Mz4pxc
	 ha81gMOQDyZ5KXHUqqRgPkh7JQFMTlU9ldzGBuE2oU963+mGDprgGvvpKpXm+AYZZ6
	 0fistudzFEU6I+5mUyASEpRcJ/6DOgmgHhJn/9cV8MRo95JqMo+Q6YK6bRp/gYrJyD
	 SKcKOku6v+ea3yJmC1WccwOIENTSD9PmlR0zahgb7ljJuaOurZSTlQ93o/leg1o1iz
	 5TrxfgMi2Qw+MnsvYQTpTHdAWIwU0ex5OuzQL5kRFWugnV9aa+Bn9Lrp32UVywvHMo
	 ifu4DJpPrXn+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92457EF99D6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101249358.16337.5766265983229263895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93fb5879f5c8333cb885a32a6aa1225fbd11dfa993d21efd0857c82a013bb455
Date: Fri, 13 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771012493

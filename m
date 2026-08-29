Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568661397
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787978434; cv=none; b=iSdJqLJUg+mlhOyI43QunzkeZDQGnVX14mrihQZaX8s/V9I1ZcqDVOHmi0/eC8w3dJ8GfG+vZIfcppLaEnTgTf2R24YQItfHGvbWMsGg4fTcE89PR2BG6oipn5GmZeNO2p+1xaCl2NrQAFmQwiqrL6nBTXWVp5gt1YZ7YhPqsq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787978434; c=relaxed/simple;
	bh=dFr6wx4fSFF2VUvk8ImP7BtcGIxpiBSIqHmgdR/yusI=;
	h=To:Subject:From:Message-Id:Date; b=R+33YS+UuLdaz+M+CQ7sK4Wbw7PyrBVZV3PK3+TPSgFVwAOHNzV0xH22xpjKonSNwOSDegYpNVNstOOCeZRu23PA5PVq0+Q0aMhvhbch2Q2ckgTrxH5bU9bPBKHX1PulNEWVJP+s1wXFX/2LE2o6quiTUXhnLJB4yhuKa9W8PNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOa31WvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOa31WvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D758AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787978433;
	bh=dFr6wx4fSFF2VUvk8ImP7BtcGIxpiBSIqHmgdR/yusI=;
	h=To:Subject:From:Date:From;
	b=pOa31WvSG6YM1BU+XBOM+R5ka3oB5hzSMnDTGgIwMnvQWeGKV51g38LygtBlanZ+F
	 IXV5uoYW67ZEnHeAJDTW2OepQmhMaMbJmOR9RtGam6blV2nxYVtYOsPIYbMDdKvOLu
	 y3X1TqYj56LT3ex9H8b+JejCm+m7NhWACdsGkVe5tdhgMHEkvd3CpJO/b+P/aybCVi
	 CgAx3YQQrhpNAs1CUSm/G3OxjcEv0SkwhMOQ6MVe2ZGdg4RioTSpe8gTvuYkXQyakT
	 ntlZNbO6f/22/imZUBlXwoeR03XwF2Ykpz827zyC1vyYnaUS5GrbnOhPIrhXpJsN4h
	 uKSrK1+Hl33+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B189EC61DC4
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797843371.7061.14053650111639883642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8584cf168c5003bff953e812199a7e3b28ea607cfdc41d97ae76cc4900873dbd
Date: Sat, 29 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787978433

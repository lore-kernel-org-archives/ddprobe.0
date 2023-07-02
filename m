Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA6AA31
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 12:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E12C433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 12:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688301248;
	bh=F9R1q13EY2w+Gi8vLmXft+3vkpgbT2W+rrciSXAj2Xc=;
	h=To:Subject:From:Date:From;
	b=YuxO8gXN2R5exnJ/8qHsWnHBW3nN2/bZQZCyvew78EVPnDxNLddJg6Ifpy23Lyy52
	 iZ1MbChj3DN7gs+ffKavqUlwTS3I0gHWOhlh8vFUKrq/SkAF2RNHlHGdGvyo4CUTbT
	 G8ePtmDkf58/8jH9DhBNdGZcObqGIJHsDyjssGIa+Q4idPGlfM3UT6zFmfl5WijFir
	 6qFbdtONpjziRwDgUgtZ6fI0e3cEtHeMgRj5d5Vr6lbprkyjOCIDPsjPTSiwK4f7Fd
	 lMHAT5ziRTCEHivJ82cdJ/Sc4NwEAISZlwULwV0tukw1l3H2L3UCggmf2Q44FGEaya
	 Yl95ARgPDCtsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8409EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 12:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168830124874.8789.15358196342280105975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92929cbf0655d4fb118b21d96e351e99298db1284cade4c2495c797d92652db
Date: Sun, 02 Jul 2023 12:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688301248

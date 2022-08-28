Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD124160
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 06:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E098C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 06:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661668252;
	bh=ZuBnwfvvm1SgvP1MljoIvyvI57EGwrz7/m4CzX95SjI=;
	h=To:Subject:From:Date:From;
	b=t9umHQCRiGWlzNpKDWuyzN5PXEyvbo1Oalw8djFWU+Y/YP1Q764v6G7O6PDXvH1Qh
	 teiTDKZG1FcgmlnXcboCJI74kHAp4OVS0VoyVzVqK1e7Z/kncBofFATqZkZFQMFDWt
	 cEJUld4d//z6Pc5n1ZgUDvFvrI6tHxGoOpR0AQWZjuViA89R1kizVDHDZKah0cRETd
	 Xz2an+Wmxs5ztGXQZ3diqnLRb7Ycx/mlCQnyAaTL2D5jk7szIn1cD3zLPd2T3mJEzL
	 umGYomjD4VsnGb9baQoIrb8iHC42yP0e0Q1zjxCFpLok7Z3dDCvrsGhjbAMp2NwORa
	 Kn4hC7XITai0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52830ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 06:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166166825232.4432.7453592075890693621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05618db8277d2061935ac875cde3070761f4deb4c89acedcdf45513b79e3504
Date: Sun, 28 Aug 2022 06:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661668252

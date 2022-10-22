Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19CE257B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8127EC433B5
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666425653;
	bh=Gy1IFd02dj/qH8LYhwkBfZWBHyr5TI8oNAP33DlWIRY=;
	h=To:Subject:From:Date:From;
	b=TdD4V+K7bUtpdw644zRCUmuN1icI1SmP96IFLi9GpOtoVDh2cYke7vG+MTO8AuWQQ
	 RZOD9kE27UsODv3iNZzHbCqaE4rZ94LFRE7YUb5nHpJ1IGEYfUkX/4ZtrJSpy3PkFZ
	 75RnBg/31tHu1gGbc4OV3sCKf6i+2kvnFLtL20rCsFsGIKj7cKfhc5CxxUrpjXdoEN
	 peNfC5qgtkpzy4ARB8Pnbiqc5r1gqBU4BXTO334/j/xor+Vx4Hp8R/nXai476tGvlf
	 inwsmziEUwcm72Ge9nkPrbGqSHq5+hK+xfRfimpOlg53S2d17vOqa2y/IaPoWAfmRZ
	 txNjGhQ1lPcWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D306C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166642565336.27035.9338474511482160417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa2e6267c25e5398b84a4c4e39124913d0b6c1096a47fd34eba3e7b442b21ab
Date: Sat, 22 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666425653

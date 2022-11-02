Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53A57C
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D307C433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667373654;
	bh=+DTw8uCByNNM5WlksD0Ndkn6SZuddMC1+pJNgWFb1fY=;
	h=To:Subject:From:Date:From;
	b=qhWXiLTbyOdF98RKmdubTVPUHRbmDWuexhaqMmNEJpMwF/DEgmxIWk5NhNrUK1eOO
	 juj52E4/0Eqj7kMAG8tF5ViW06ftvIFTcx5iHqY1f2eMxapTUH2GQANKE/LFX5s0i+
	 RuOIatMzvj4wtslGaDr3Oz6W8082yYyFK5Lz3HNSbvZt/LH45rk3XpYJdgoDAL4xqc
	 9zyWahBEMGSaneAFASOhVeovNdgGW3XcA1/LBk7qqoyW9cR3WS3cuKrjcm6+gOLxnN
	 Q+lojlRU6AKCWyw2bnguY6dGq7duxgG/HnKBncLaf9Jzi8bo+ePsI13PcPtVBgz9lO
	 Y2vIecS4WWOZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54335C433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166737365433.31405.8873286451015715297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5eac24a160b9056f1bf3879a526934e23d58da4555348d9a553f00a3ce2dae0
Date: Wed, 02 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667373654

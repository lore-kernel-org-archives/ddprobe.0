Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F812F44
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 09:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61C1C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 09:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688807828;
	bh=VDJ48INniJcm8K8FvSGH4V1n9eJkSAO/Uj3UPHQ1Mlo=;
	h=To:Subject:From:Date:From;
	b=bmH51IEsG4tY6/CA/QGo8fNdTSv7G31QoJu+J1Yleij5gGMLRyF+/7GtPwhpoOXMa
	 rPjf0raZwsT92gTDxwSxBIIxuEub/yJ03ItwD4sHBWTjiCaLqIG/cqofEBs93hsv9c
	 Kpj085f1msmVrXI0OCduATgbI6Q7rr1IZ/vyWOaaNt763EnC9BgmbJV2qaXKXHguhN
	 6FKTCkyhGrpnILWfpcYDpqAsbf/6EGaODq1IZGjh08FP7Ma44bw/1aPQ8bNbtDJstm
	 M5H3vdZS+fRK3LtkvXGTvoXHUV3x7804zjv/eupZ3VkJpBcp68YiVKkDN5zNYtUsJW
	 evWog4PMvM0sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A9AEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 09:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168880782871.27506.12726574083155919641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39288d1b88d41c12575d5f634eb8badae875631506bddc0b8a13ce2d5c9ceb0
Date: Sat, 08 Jul 2023 09:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688807828

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E3DCC138
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 18:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 004CDC433C9
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 18:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689790929;
	bh=gBMbP8WECbF4lio2EcVDMvwYRU8AShZvy/kbe8+Ar+E=;
	h=To:Subject:From:Date:From;
	b=ehCG06erggRO5VEyuSHOo8VRFdtP/Y4R0MTNnhnX3I+sz4fw/5Ah45/tto8CXOqbz
	 xaUk93Wnm+EGPc8qkQicaGzDwFV7jCUspu6dX6MwLPApkDEfbvhGxsiTXyLo7FG7kN
	 7TMF00g5k3ONJ1Xdo04RL93Y/Bz1BSvbKWqxwZerXDmWRxF3ARZl2quPXoZ/uVeaIP
	 /wnGDO1AcxJlfaV5k+iAFTTcsQK0qtEn4Exk/qJUeofOg20gCDo5dVkKwGA3ZuAPv1
	 h1w2swF8VPuLqwWrjhznUAMnOdzd8dsm5o7jy5boIuem5EicrJIJs4j3v8OBok0oli
	 JCeZzBvzEYY0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D48CDC0015E
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 18:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168979092885.3027.4575052919708020459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a5403f43a9624e35fb752e3eb387b5741c05e147b2bb9f860cd77c5f8af662
Date: Wed, 19 Jul 2023 18:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689790928

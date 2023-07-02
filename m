Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D64B17E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 09:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6203C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 09:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688289848;
	bh=+4oa3fTqzkdDHbdaUjeTl6BiMaiduVZW46bhlf0j8RU=;
	h=To:Subject:From:Date:From;
	b=Lu0ai+qy2LvHb72tdbUwsFyPVIBuWDWsZ3IxQ+IgXypifcidPpWMy+/LhtqF/hv1D
	 E5dkaSbAmD1T9DdIhD8Rq33B5Flj1NmxSwgQJ6xWZDWzmn0X05RexU1+xKtHU1fs9d
	 TzOGWee2ohNsaflUv9QHPKpHe1WlBPGyGL/AhXJVYaqa5NMthM9NoEQR465U+K3dCT
	 vzeYTO5P0GYElYttbK4JN1acY7hJsva4ZQ8cCxBc4F7bZv5E7KaHIU52UsLc4v/hgH
	 Ae+RYP2v96RdrleM/enmlWPK24rcl/q/PTukzsp7ijTPTTbe3U831ep5SMOYs3xAQ1
	 CiCPFT+ACSBrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C78EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 09:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168828984870.5080.17196239935666677568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf8e4600be15007909566d0e54e6c5ac0f1f9043c152993331761ebd3b69fff
Date: Sun, 02 Jul 2023 09:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688289848

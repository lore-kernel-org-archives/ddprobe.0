Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5AB71E9F9
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 706DBC433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667407254;
	bh=sKARMpCnKaphUFJSYgGs0/nHduliy4nkuOglG/h0Mx0=;
	h=To:Subject:From:Date:From;
	b=JwuucEtCkZj1ClRd5eeQ+HWsq3IERIQ1vnAEj51L1In4Q8vpwmun+yRcXQDBIs3I2
	 ifI9t1OZtSe+PZQl5HFxQJ5mub+zN/RT+ZIgEdY2Lo3BSIAld28Tbw1UtZfKhn0uL6
	 pmkk22VHqxVRzNl4XBIj4V6iaqQNUoMNIxDwCQ806hPJsndP682fOxYezj/EsAyK+a
	 wCgIMrqpDat+RdEujk7S71jhUBb2qUhnfQ5/w2kqlDNwcM2YGtuJeAZQEUiSkDthgc
	 //TAU2D2m16Rc1q1uCd1EteFQkIYhkJ6tC76QU/8sBh0SVKX9zQuWdmtINSPwHziOg
	 4r1olv3Z4QKkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 585CEC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166740725435.7214.17098563953555817819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f01f52a68ebe319ea41895b6503e99e79a2353dbfd5c14d050ef410a0fbdd6
Date: Wed, 02 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667407254

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3EA67C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72ECFC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663785653;
	bh=TSkdrlOqrsejKWNh+qehSJPTkHJUtVKyaMIMIaLG1WA=;
	h=To:Subject:From:Date:From;
	b=p3eh7Gx7nHfeY65KRMsQnshAx+mscdddNZwi2tr932tbarTfnp2kmkGMuLYqkNLMt
	 Cc4V6aUx8OwGoXtyBjg5upDlhctMAf1Ew4+OnZP/U0goFchfpsAviu/C2qlulDTE0J
	 UhdhYlxr2DadNqPigbp2UwNVXMl2ny8RxLgJg8oCYyF8qsYKahYonftCgnW1l/YjhA
	 IgI42cr9QazNiavhzsjKaX5D++rhTZaVlNgothEFeCp3B6OBdxmzNuH2n/4YhW98JY
	 FLThiHvYrZ/w+vOH4aszTtTpoB959RdYt3stO2KFctWKx5iJX4fPJUVOLGSimbPCO/
	 uqFDB0c4lnopA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E6BECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166378565333.16028.1079956135113030908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10f78df865d71b633c710b732479982a6647d2b188de1f9dbbf06f514ceaa57
Date: Wed, 21 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663785653

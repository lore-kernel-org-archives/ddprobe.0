Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C185E187C
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 702F8C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665295253;
	bh=8L2GCZt627d8bAA53iXAR0S3XT3qLZq7SMxodMQCRks=;
	h=To:Subject:From:Date:From;
	b=BDAprJajEJlgpK3nIaSbNsYAmGRlUdNlCZWIalXlf0K2etAJy7DQNI+A0hZSdM6dM
	 mImwiBR+DSS5cje8fHklTpidH1e0pDRzviPnRodPGZxP4+afgW3GPl1DysT0MYRalO
	 yXZ+RRqRvQCTN9NOmbw55byXWLAInRxjnTwyOY0l/VIcgHCbNI47eRZ+coLXcamL3n
	 3g/UQU3WlDDApGqWhSEzYT9eeWBoBFVvBXlyKsOqwoSObcgvtOfPC3DLvIgEoViT94
	 zTDVcZStVa/KbeLvvg3d6mTaL1uEoVnW2lPp2tw3N77T0Ykv0sbvn3O9x4HuZyUTHb
	 BS11Lzp5n6nUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52AA9C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166529525333.21280.4070121489516474989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87fd4481f25c0dace60acf2361d445274146ae2574c275c594a97ef17e5567aa
Date: Sun, 09 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665295253

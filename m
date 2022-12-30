Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E70DA256D
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89D8EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672408287;
	bh=43Xi7DB8Bot552BZ8X+Y7t+COVUpkf+vGu2VGYX+GxY=;
	h=To:Subject:From:Date:From;
	b=L99szMUjC+rUUmXT/MKs9t258Dd5Ib7TvqpBQLMu//rQkaxhtgaZiNMxyOaWJV/RH
	 lZbuszYKbAxSVQ5fcZucS3FwEexNf/p/jk8cpIxHD9ojbdnmNIYYzpARAuSLm2NsOY
	 hnZ2guECmFbs2a/ug4v5kfNQBG/LNrTa6SPHImuuepHqFrcOfcPT76FGpXLMR/gxWq
	 fzv+MXpSvdF27ts1y+Ba25OK79JAqGm5djPCoHzzD4nfHAc5gu86tTBY/L1eJnQCrg
	 T7eS2Bve2fhaxD81JS6JIjiTIROi6IA8wJRsj66DeUut0y8cFpnYZN320NrvvRQLdc
	 TlIfR2ENXlL1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64280C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167240828740.19978.10052770181299402595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921342a576a041f3bdbb9fe1214f8145b7ce607437892ba99c598eca6a5d4ab7
Date: Fri, 30 Dec 2022 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672408287

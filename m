Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B221A23
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 04:40:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D0FC433CB
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 04:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687063208;
	bh=hvharJ/RRk5GLPe6E5sIBZ87ZU29gupUY17UAEaDfGI=;
	h=To:Subject:From:Date:From;
	b=mmLBvKe+HXErYNUmGPl7tV3oPqHOZM4XIIrHu+N4xflVRVTp6+f/Ish7PP3zLBnYS
	 T86wAd4PBErCz0U3VVyhEHLbUFFDlHavpTd6zickNce4CIc28dlyM/tnbb+B4O1ehQ
	 1qNVsjNzgqR+0Ehri7vrGG9G9csZiS2ErqWPBgqzzIEV14f1GHQ+Tl5Fo4GGfzzh99
	 iddNQvvcbCoxPtoMapa/GqWfDNNHd3MYJqtgnGEk97e8ekhY1CgC4BG7tVoENqQJD6
	 7fiwcQcMRwuBPgKYhqLJio4ssU5pAWxppCAMYJUgH2EmUW/hNWnIjioYhHIKH3nV9q
	 E+IN/ICBaZLBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A987DEB64D8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 04:40:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168706320868.31198.12842651694895683244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5995029630b4b6d30ac06645fc10bc979e04fd21a5dc644cbd9b22d4b7a209ba
Date: Sun, 18 Jun 2023 04:40:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687063208

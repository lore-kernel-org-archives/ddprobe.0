Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424DF154AB
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 15:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC2AC433EF
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 15:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685545445;
	bh=AHgnhm/nc2bq7t/IOoTbxktSw996njLpKwj4g6HjkJo=;
	h=To:Subject:From:Date:From;
	b=g7kelwM7y5ICcWMCxIDjeAuHRsXvCqiy5M1FpeuetAil15zvpp4n97gqXBiim1PMN
	 kRU101HyJgsxPgMRN2gzNxCIbBU1uX4LfA8200AoQjzxZ7SlMx2Bcf5/4vJiL2OfoD
	 avBR6XZZbsPtBLsrnwseI25+WxKyzhM6XMcsQgrbXHWl1tefUDKSD6w7CV19htg1e+
	 GDZ3nwTbc8NxHMf9ej2K/9AC9ZDo2ZHEUNmsA7Y6Ru2fK1qpsWadNeTgtFez9LTyMX
	 JJJZ12UQxThlkTmJf/LJ5ZB4i9XpJp3cByxwY98jGPpD5RvhzY+w6jYXyEMTi0Izj9
	 W1Pfh7HU5dnAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0997C77B73
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 15:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168554544577.19219.12600850183335765945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e424b2380eeaecff7694166d2ff990fee148a511c4269f1ff357d9f17c9376
Date: Wed, 31 May 2023 15:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685545445

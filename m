Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9C1C0A3
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 21:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E24C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 21:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676411825;
	bh=gmbN8B1TK5hO6/l9G28ECaJcaef23ZQzDaArs9Ha/sQ=;
	h=To:Subject:From:Date:From;
	b=AhBxUzAPYxvZWN0YOvkUvXKnDevDZO8uohIMZEM6FjbfeOnsYo67beHK9YxoC0cjd
	 nMnRdRnswXN/qwSepzcNSGvt4Gfmt4i7HZ81RPASJwwcLRIq1E+SWizTIEeW31tkEG
	 FTyFaSpf/bmZTgJHDQ31bNJnH4YHgR5feI38ghhgrBTuLPasGxBOEsf3betVVTU6T1
	 bWE/6X9oyiwkqF1JeHaq2dcHyuzy4RNvPDc+KdXuXtc3jctMAwPpKPlLpLzDNJHZ/5
	 MBVlDwWLAd73NiuSQ/+7vhPg+bK/fVPT40dttNOug4WfKnB+/jLTcTk0flEnmLsmJ/
	 MwjIq5fQuxpuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C809FC61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 21:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167641182580.4345.6938535555745153176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31dcaa5de0a0b03a04aaf65cc9c5d7d1a7471c99fe86613e47b20f95edf3d84a
Date: Tue, 14 Feb 2023 21:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676411825

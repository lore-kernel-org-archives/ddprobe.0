Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B8F29AF
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 22:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF8CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 22:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693348448;
	bh=hWD/K9qOHpdaJ8aZeNEn9LdgYz9IXySpSeQ6Pf09pMs=;
	h=To:Subject:From:Date:From;
	b=dbWoc/qCXb4rYrkKDrVSW16lYOfFX7Kn34JlQ1Cjac7NfiuvjdVMzFPJscLaHm4rt
	 olYrhg9rey6z5Mc3SQ7DHnO1vWgI3/SxLIYicaEuPvxoBs3phRzkaCW4GLBbR7aKk3
	 p7TfWucc4h7s7apZZ7uZdyJ0+3B24ZjRY2o9vViq9uunDyiZJ2GLTrTQORgNsOUMxx
	 NNjaiZLxRaB4RztYBn8MoZHv1ESJ2ZB+fg2xx1V9GooENHaZ6l1E3grvcUa1h4QhmE
	 ngUzq83cttCy7Ojev1ueL0fgQgeoDfoiUrvEG71yI4fP1xF9237q2Rkbw13/2++X9y
	 WoU3VgiV9ypzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0652C83F12
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 22:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169334844869.24112.17303609127988337314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0c7657921dcf1d8cd041aefd33029c5bf1336a9fc3f3a7680df9f6a61c78a8
Date: Tue, 29 Aug 2023 22:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693348448

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B43393C2A
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68B23C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664731253;
	bh=TFc6+DUCXxiCSwGqbzuo+k90UFjTTuvTqWPDKTUN67s=;
	h=To:Subject:From:Date:From;
	b=pbp0iGrm2bHPB1cy9uj3WGs33e45mLFSp9gLu8J6xcpZPmiqFvBScRB0ZooW3/aJl
	 c7DnUh2IwPCKry241oLAmlfu9YBBCDrZ82dGWVnJUVjJ90w1cOyJdka1AFc0/HjfAY
	 5kQLgpwcYvvwDniqoppQuFcvdV3ebKH1FhSyf62y/sNW+y62fnoMaFSs6KpO61jAt3
	 9CAwBL7IdBNg8/Pb8vYQZVsbhBIlbAytdonOr8OInsUdstHBFSBdYKwqr5hyxHgjBW
	 j9fSLyKEIfwUm07/qjg9uGXqdcZRVepmH/S5tjN5pJLH4siAdwumx8/Y4ONDmjFxFx
	 GKiZmILKqo03A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52736C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166473125332.23265.11717538355906051883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9973f8e25449cb42eef2230a946f51d6d39a09116467678e2fcf309936f748c6
Date: Sun, 02 Oct 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664731253

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7D415CE
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 06:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CB8C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 06:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688711828;
	bh=uiKbKoyFWQOuguyDvfqS2Dey3MP1Bcx9oePtEqrKMtc=;
	h=To:Subject:From:Date:From;
	b=hNcKziI5b9jefMbRp6FnByxGC4oj2X43uccy/AvFSYBFIv4IEXxHNrn89YP1Ng0Xu
	 mxRY+1i7kdXLEfLhbqzx4daZJU8DQv2HPoBF6s+bf2EVZQ40WHKigWb1F/JxVtlqQ0
	 8hDsg1npmsUZ4tJxFkd0kiJiy36Mh51G1y5SA6wgCMRgaZPFSPKW++WCmKJ4jYT8Pu
	 LDJ6whu9JHQPOMFiQxGE/WfrpwAK+1xo68U0MAtCKrmh3nMM89OFX+w6VbI33pxhTA
	 jI04ptO5O86iepte38UEdtQHvT/d8oRARj2ibPChwNqjuvdNFMKPk9xn8SEhnSkGPU
	 1vgoLLW8yfPMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC371C0015E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 06:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168871182868.5693.3830665498820424727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d102e9098ed3dd51f389517f7f059a301c728579d0fb11848d18516e939b068
Date: Fri, 07 Jul 2023 06:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688711828

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D153617EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76590C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673429487;
	bh=v4Lmu4UuOUmVQDeTUuqUuji0o/67K8FkGvPTiRGp85g=;
	h=To:Subject:From:Date:From;
	b=Pggjd8cDoq2Dd+yLi7s8ZD1s456vUok4kOS1FEaMsSxTXcWVdLm32ir7x0AssrdHj
	 zGfuankg9Kwqgohs35qjYJ97AA4Hq2IS1cyp+RcuCm2DBx7HS/drEjfIJ2w4C2xUPj
	 q828qYxFjM0gL3hoLjC9stiE93ESIdZvePiNU9+MU2YcasCzDREjAGptRskX1IpquA
	 iPuYnEk+JLtiQbcPmgtivKoErcR2uQCTUMn3Zuy+u9u88turPGena1rx9CLfnX719c
	 hwj2spcPVYnCYvrx1bjCEBxkbBstz1AH/dv7fgVaMtP+2umtxvGDb0DdX6/KRWNA1m
	 amPC63Oc+85Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F8B1C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167342948738.26864.4791586687460562907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2546fb08b2756025c2548b4e4709fdd3624b8f179c0c57e72fc7e0923b52951b
Date: Wed, 11 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673429487

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17F136E
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F55EC433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664952053;
	bh=8FkJK9yrTA+cLALPzSKebZBNZzmlCyI8Esj1OwCfSsg=;
	h=To:Subject:From:Date:From;
	b=OGwXIFgXm8+Evi50p9SJ0xw/kHPuiGcaW8dmJjX8A+iQU6Q0p5p4m6IzJ2NDuhv0H
	 N2e03YLPbEBQR02owAtu+yXjiXQdPWet/0bUefhUA3ScLBlvyw3Jsyciq+SaQK0dRp
	 umz5yuEUYubqfz3GfBx/qUk5rlu7Y2VFAPjdbAAfrALVBq9O6J2EVKel+OJvnTEcoD
	 Wc0Mvzhi4aaff4lxVm0meq222+yFWrGClSb0KedhMkmD/zwyOjQIJPv1JCpNVetfWD
	 4feerAlJVfXtETL1wy9u9iicaoFo7JQ2Ikr9kUvrNTYAlJxdYBrGb5DXK1oN4tzXbb
	 mb+51A3V1oXcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B91C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166495205333.6077.200255142127495647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82da2da0448f1f454f215302a6513b267f8e444ed4ec1f025732af78bb430a1a
Date: Wed, 05 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664952053

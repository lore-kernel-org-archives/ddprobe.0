Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A85A51FBA
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65D9BC433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667796654;
	bh=Yf34SZ4Z78hITMHD0CaKlEu8QyPP/vKpGND+GMrsl5I=;
	h=To:Subject:From:Date:From;
	b=mqrPTQi4BviCOLDQ/zbvtfVYl9gtd2Eo1X67zoq5k/UnrWMdgkvpxrX6BJxwVwkqd
	 U4CKMsIiHcukQRZNL1QJohy3uaVIXtnpqI/0KxJyr6AiMZbMKL5wuPcvItjmpmcESJ
	 J1Ok4fLE3cpm3cEkU1tdcTq5rVwZzO4c3VAVBM7WuhWAaGk28wtjw+QQGOqz5q5RvZ
	 IqCuLhRfoNbSZBOfZMEq2BKb9U7DI3Nbe27Zue60bPdJ5xVbWYivZ97p/t3najIXA3
	 0yu9gD3AIVRRyIbHPUsaNyvVH/NsMvOI4jyKeNlmeoWcIFwp2dGtvPYQCr/l3tMpfk
	 P2WnGMSzFa/DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EEB7C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166779665431.7378.11945457490551527275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a5aa3494a554ed1c657173d0b0460d78b421fddd1a016e335967f5c58c1775
Date: Mon, 07 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667796654

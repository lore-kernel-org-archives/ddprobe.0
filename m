Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39DA20E1
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82FE1C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671861087;
	bh=SxPasDW3qKYW2WhUj2jLu7ao1K44zcOQtxEo0QeiNtk=;
	h=To:Subject:From:Date:From;
	b=kzWqbrz0n+O/bSLYQG73JgJXklsHbfmDqdzQgOm2Ft7A+oq+bk+RaL2dwpaB99tQT
	 M1YI8b+fQJY3tWOYuYra7Jh0vegLMa0dC4rfqyRAiEocoYGJUjXFVekZxm37/9zt1s
	 1iMW02hQV3BVhpy7VUeRRN/Kp+ocec1ug3hhxHTaHT/y7EAl+fL1WRL0FUGNnR5IUm
	 GoPE3y9Tpu7qcz12XlqEslOA19aV/VhUj9R0biEYimZmmKS8ffnts9xdTJRRM1Rkw3
	 KJAa0XCHTR1A2J4Ni/DpPl7vKbJK+oLvnw1H2wBdF0vJUGSXb9nuHIgsioRrBm015c
	 gTnC0YhwlPTcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C22C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167186108739.15720.16650139236918966119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c7326f8386b0d5e5e0fe8db0179aba71926ff8f619e5e457a46435ce102dfee
Date: Sat, 24 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671861087

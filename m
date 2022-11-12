Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44496ADB
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75401C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668288654;
	bh=NSZaD/OvQIU8E2eusFjGAdfl1BNyezsMcIVP3J5S5CI=;
	h=To:Subject:From:Date:From;
	b=RSZZg8Es9QM0QLjGDmbFCxVpOHRp64z90avjFsBcu6DdNkcDy5cL3ADPdch+y42gJ
	 FSc/aIX+fg4V2omv0hlTl0de5HODYKlHeCm/DRBN7cYKE8tSduinZmqOcUKXk6GXp9
	 c4A1phnizMS8ywJ7ELTdq22bRpBuidmBPd41j/V7AoFdCgbPxOGja5pwntxmssEfFP
	 qbRsNLGl9bjgaxoGuT0MkGObRAwYj1YZd0GGnmYVAHP11uys2c2T1wj4BJFkthXzws
	 5oxydVdPKUAFcSL6KZ40vis2c7gFbPI1VLajOFqbmZRbOYkfPSaUxayV7fFce/HZhE
	 jbLGeGAuxi98Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58434C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166828865432.11537.17828807438202726109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fdaf7c39bd1a6e0e1c43fffb6944b50eadcdb961113123727c4b5d6fd2c15f5
Date: Sat, 12 Nov 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668288654

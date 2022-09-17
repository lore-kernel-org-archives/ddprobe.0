Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B93322112
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C659C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663418453;
	bh=F7v17Bo/SMAdOJ+mGDY0tKw7HPfVLNeKh01bV/oHBNc=;
	h=To:Subject:From:Date:From;
	b=h+B3tsboJlMZLthllr7kqmpIlH14x1Rw/5ct2Jx2okOVenL7Pr1u7Fd9wSsyOarqy
	 wfxedeWWx1wMzwBbJPprFltcWweW9OPdCMoR9Dhia/CRh84zTcu4+mkrd4VPV6wENL
	 RQ1xPAlQ5/MJLB3kqEAxIL0kZW/JL9sAn9Zmqda8DB43ynAu1SPxppySmyFqtZAQcO
	 7JL+24DI4mUGEAIWZIq7nac/HaEI/ZQPNYGNfoL/98a5LqQGpsGUWerxUpwlyDHwpJ
	 JSiZR0M7jx4E4SdEivVCpAj3bo/M+hWjh9AxJT79I/X8E2eGjpy93feSSpxNHOgxbQ
	 HTVWPzPbbh4CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514EEC54EE9
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166341845332.4738.13668517069376565504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6a10ac7b5de687fb4fd0c1693922fd3ccebe21605f161826e015288f152303
Date: Sat, 17 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663418453

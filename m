Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0587E9
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 02:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00444C433D2
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 02:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684635006;
	bh=XkIA8YRB5Ehv1SWNQUaAmq2RD6sImCoiPJ5rEp6be2w=;
	h=To:Subject:From:Date:From;
	b=ZqK2Rdrm/EbqSCZvyBlfYNefwguY93uXyEob0RyBczKq1o4DUH6CG9/ZX3pILv5VK
	 R/+pSNg93/PfKUawxymnYgAi32+9A0eIWUBAe2YNBI6+7BFiEtmC4yrxlZABMf0it4
	 CiCuTD/P1ZulddwY4azKUpfHkrdkJBevdvSM2MeABItJyYSm7Ex+0tH48nE2GOuMmV
	 f3Da8be/u6vQriH/qKq/OZOU+kWh1VRJyNfPwFecequY10i2cSaxH3pQwX1ZpXhnyN
	 /WNNTQ5ecNeJDrYHU1Kr8cHO52J7M83SHbBGi0whcWf3Qu5Rfp9pwmKEDxx9UsPjg3
	 gsNz6uN9nGwcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4E8EC77B7A
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 02:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168463500582.1146.16338338254586646318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c048b69b850decdbb245daae1c3289bf24cdbba05d6ac957fbfbda5d4b8695
Date: Sun, 21 May 2023 02:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684635005

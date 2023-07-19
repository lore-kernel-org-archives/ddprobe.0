Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686DF13FE7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 17:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8BE7C433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 17:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689786728;
	bh=Re+tL8J47y6P9p08RDYyVS/vYhWC9P/R8eVfGHcLoWA=;
	h=To:Subject:From:Date:From;
	b=btPT4gr9VUmiMivLxwBqxg1MJsoxOjQJ+FhOfCep+VbwwAYZAyBMbaieFkOl8bL+D
	 1X2XJruWshSB5t23BicYnQFtu61EGa0/9TTpq7qJTFDqXamn642+OB2sP2oRKtn+th
	 AgJbdpxTcnfWar3e7bSazjLJVeJCpo3pgDoU0PEQZ/HcMzcCM9rQyNaTR9McmwFf5w
	 Poi8Cda9QwScK9b3HzWXRgwmwhDcmYFlCVQ6o6PCdh7gDwwtX3lXqQqcRsMaVcZl24
	 Kzh45hA9fQ4r26PVi91xrRQ4yoFajUw83+jIYWvAgfT23dMwAOUUpP0zpcaQE0GyJh
	 zEO1//bnBJYbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD942C0015E
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 17:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168978672876.17141.12309415632836931695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29477ffccdd4d94cfd020690b41f990709714e1c9fd9ea605541974f31d407a0
Date: Wed, 19 Jul 2023 17:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689786728

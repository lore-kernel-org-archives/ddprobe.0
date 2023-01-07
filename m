Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8580139C
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 841C4C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673075487;
	bh=JULCMPFLk27wpzeiz+lx3izgaVwe+R/WofoNYrYDH7w=;
	h=To:Subject:From:Date:From;
	b=qI4FwqrsGKv9lYoh/M2fbxDV2WmYFKfqK2BtQiqq/mgr3/D/7b/6gna1LyOZGx6+c
	 E/c+BlKCU++QyTREMTZAu6wEzXPbTg4jkKIvyFaGtVRwiy51xjmR9IFfmTTGHKns5C
	 CVxu8zdDXjpdZlStso2wZHWmiCkYkwYyLwUFMW6rTyF3wlRxVp+eXay4J4oPLkUVD8
	 mHZC59B9fTSZVqPFFBAF27EbzHa4zbCf589l4eQSLIXf3LB4OpmJpyELNlqruDuwGF
	 w/5A2wEfYaVtVTyu28nVf50l6PcwkC8k7eiGSQEy170POBlL8dE7D4+NYA229N+kaA
	 qajfPYPFnbccw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65774C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167307548738.18237.104655087725238245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bcf830093f7598cb1a280c149b8154cae669160e6dc010b896817af2c1b45c5
Date: Sat, 07 Jan 2023 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673075487

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FC1A5C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68F7AC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663670453;
	bh=r7/Uvn5bygD4U4p6EZFN8AlHGfz+p3t/2HfOQ2tqUs4=;
	h=To:Subject:From:Date:From;
	b=F8dPnjhaaT8iCsS1ig1L5zXDkK2FGqB4FNx3U4Ya0sB956VkiOv1Jhvy9b/Bg0mLw
	 98lE1f5r5P6Z1radBYWjZoKEWQ+9E4GYdd27Sl+t8oDO2oMmOhk/WIg9eQju9eO0dc
	 J2/GmSYDvvWjm6OyGolSFH3kgOsGfKqXs08HaWqQkCQ8nNUedLCmbOqahXqBvFv4xw
	 wdvv17G0ntxgnrebQNvByx7eN4xF3J1JMSqeVV6FYuCntVJQMAfFh3BI2srFLqaWq2
	 rgvcA+TuTr0HPc9ygkdeIarXPzN+i98JEUWCuZFXSgJKO2I8FOyEf0riHBr7PULUAc
	 gUgjHMPScMexw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DEDC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166367045334.2700.6486448044702944096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea3a93c1acd7fb76222124d736f93e7182a66e7d69472053e7514f31d9eafef1
Date: Tue, 20 Sep 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663670453

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BABA63D71
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F509C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666458053;
	bh=Mg+4szxHRV7sOju2nejKOA1rZ/LdJJ4P60ULmqwn2OA=;
	h=To:Subject:From:Date:From;
	b=lTipEAsSCD2VvkVInLvwG294DBzqDw94160MxkHqebs2tdopAzlX4GugG+Nk0yF2B
	 tAH8KxiZv2HuCB03xJgYsYcN5enclpV4oUeEgvTwY8NsPV6gDSCtBQSB2QVxIjY+Jo
	 Pj3ATd2WSrDV0H+ldBm0zpzjRhkCB4MuH2W74FS692arQbYfWDmG+/zNwQmiFr1WQP
	 dppchAIIZoA7WtD8927pUdSHcY1I/KdJB4gK8v8YCFArajOys3q/U9FG79myCTkRqu
	 jjNJwX8ikDKQN3S6uNNwJlATTuwIEdAuokI1KLi2ZkCDM/BxIa26pd4gvBus66bkna
	 ZyyV9IaGNxbvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557A3C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166645805334.20887.982020224289457674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f987e270d9fb4fc5b5e910c1d7843c088539c1a45521a15a6a72087fa5e5512
Date: Sat, 22 Oct 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666458053

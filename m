Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D5ADF4C
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 12:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC1FC433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 12:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688388368;
	bh=YmzHcfSwjOG0Ph5NpKr6XrzZ/sd/MoSvoN5DwEPRw0U=;
	h=To:Subject:From:Date:From;
	b=oc7YqYVbLOfDo7Dn8I7r6g2/PksrYztG7LoNejcSpKnJKw73r0CauoO4NFQsWWH1z
	 eOQKpnns2GkZ5fajGt/S6LKZncdOcnZBUkug4laphaiNDMWXr9HlQgZs8aId+tYziw
	 NIihoVmN/djao7e+DlZeTDEVO/ns8+4pewOw6ibNLi6ruvZR4XsDO5IUvdrwhAFc7N
	 RPaHEQuk95tsI2mXoCm9GaZK+6m1Zyo93BylvDtmXVfiXviwR9CXRd0xnR7YrqLTx7
	 N+cvHjLy095re78MMbMKnsOnINsnaztS/D5C4bnqBh5tEpCpVUOcja2W4iibpoljyl
	 XXVlxvbWf/M4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B537EEB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 12:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168838836873.2551.18319885197541805884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec8a23ca37fd487ce1e6f2738f0b7f54434d7b4892eebdc38e9b6219c226470
Date: Mon, 03 Jul 2023 12:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688388368

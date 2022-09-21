Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF50C1C27
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94605C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663742453;
	bh=ZjsQQy/rDzwxOJWfabBtjjfnFIt/2ave/3bSf/aJxco=;
	h=To:Subject:From:Date:From;
	b=Rj+qHQZeWJO+kkSOXqhsjH4ibOB3thipIYINGL882IcHA8n/AJKy/pS6NZD4UaAtQ
	 SUbk1mJjgqZTBItDe298L4JVp99PDmW3jd4G4KoSr43HG/nJ/RIDb2g5fqlHUOenn4
	 zd4ShoeBBIh23uk73mena+2FQqH1ud/mBuuyrXBqLQY1i3W6IxUT3+K5haXMqpkKFP
	 3Z+p6abSwhPxS/vlm1hUyP9qThGwPCkCMlywLtVsOPurlJdQENFvLS5s87Av8i40L7
	 70ev6haUtT8qPYJ7We0HYFw6bbyN9os3IRWmTpPYWBJUvEyaDEY9jihRITczzFQtNP
	 LZ6vB5S9LXFdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B05BC32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166374245335.1761.11299820762114479725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cced9fb4f3814ab2062f8707cb76e422dae3bafd653f67c28816d436f3473f5c
Date: Wed, 21 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663742453

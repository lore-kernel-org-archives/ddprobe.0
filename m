Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616A01FAF
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 04:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A64C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 04:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688186648;
	bh=Mh4nZDriVYrwB3K/xcU69PxtjbchXc/iW6ihXyrMjxo=;
	h=To:Subject:From:Date:From;
	b=Qcdz2xr8RgQW2j964WVicO1drkDDiqDEF46vbNnVTkI1MAr7Xq5MuEmO5u7HYzogY
	 AkvgSBfbofeVxWlUVLq6SgLYCwEZ5BO0YaXZIb8SRjDN+1GcJWJAS/e5BMfk8YV2I0
	 orAZL7VpFP8WhHBauL33YbgtuT3iJAaCtJGOhUg1WAcGKrD7gNLQb4Cq1IaFHMe/S4
	 1KdpSrX2oZ6k89vkbTazucnvi8B9NrDvRemKO86mx5MWpuIZdZbe/x97O1u+6/iQPU
	 5u1xoohcvxuyvzvTGdRpVPNacQX/e1+NUZR19CtFTz5EKQ41eeiVQX4E9LtiKatzUG
	 JY+brpyyHmFMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB77EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 04:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168818664870.1340.6415595240743256960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a77bfea634df09c21e5267c7b4ccbea3a0073dc6cabe78bacc040e4160a61e
Date: Sat, 01 Jul 2023 04:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688186648

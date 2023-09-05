Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761A3375
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 02:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1806C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 02:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693879448;
	bh=k8p+rIaQTnyx7AiZ18FJrNy/W6qaoXxkn7ag4fJegBA=;
	h=To:Subject:From:Date:From;
	b=utmnIa5d4M3aonvt3dTLjpOk3iHJvB66Y5uJkR5vgxdWfRsIHYuHH/WYuymkkTi6z
	 qgS0p84etWFblAyHlVYdGWNpWdVZMJrS/U8VJkTO80ks97UVNuW55dcIVbuS1Iiy+X
	 647wHB8OJJF31nknLmJ+yNNvT+wHubYy4Ce9IzgH6D6UkUOgVxZoMxmbO3v2VoDZQd
	 2pCoiOJBvDAFNBFme6g6gPvfccmIvi53WmxbQNMj+YZd96uRxKIUkZEApC4/xak3hT
	 wXVtVC2fCdqykzPthPpOPVit5poi6nCp8C/9gd6RrZ6ulyOjq+GLHlyepicGk46f+/
	 SQkqDm8PfCnUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5377C71153
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 02:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169387944871.31126.12210282685153644775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7da068a46666b7600b57d7efce9eee3331f133347e4a260633e00bb1d344ec
Date: Tue, 05 Sep 2023 02:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693879448

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C9B63B3
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 16:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6150C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 16:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691772788;
	bh=NVHLoRIUfXT2V5GIy8OVc6Atc3pFa/alCC2W7Tw7B3M=;
	h=To:Subject:From:Date:From;
	b=Xls73JaQs3if9yM00kjz3dKKqJgDKAQChkMMrEs+/DjKm5H24OMxQK68tjv0mctaF
	 3tgi2hoXyTHI4UGNni/+ZItJ+18F5cYhUHkTBUnpMAmYSTnBIrLVeFXP2VO8qcdjHj
	 i52xQ+4gWRsrTTxnHrgFca4AD+cG2H7vpO4ZpT6QHFpGeKvDKoOZYCL7j4djOUqYOU
	 gpmbo1ao36EF4d/R4qEgdm4zkj0HCqCxWYxbFaTO4S6uRkGQJba7kfRYWlexp7z35/
	 D8kQkDONkNvROA5IAiCRo5lERuT6P/qYLgaRikz4TmJpy4JVswr1+zyOxZ6SvDWQ6s
	 QQdJzlMv5JHZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD81C001B0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 16:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169177278870.20283.4087010729115412117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ff4583523b097a3a0ac0ff44077a1aac28008073d1b98bab973a389bb0cad0
Date: Fri, 11 Aug 2023 16:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691772788

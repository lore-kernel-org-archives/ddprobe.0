Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36D246A1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A038C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663778453;
	bh=HFm4HUWe0rK9VvQcUlU7ubrnhyznvNci0MO3hPGyQds=;
	h=To:Subject:From:Date:From;
	b=Kv6PMPYI//hem4vS0RMDvwIzZ+rwVBAuU6a/lB5zojUB+5/Yvs/ojRwreigje3rK1
	 74cGI8dZzLDGC4EszJBAg1ZLXtMB/4umJiyNglOT5EYMTJSS6bVef6+T/OcJnbAP3W
	 /l+MjgZRNPP4Z6QJZRxdcngT63cUkB/KCksC7DHZZpJZOIx5IMTlTPH4Q4f30f2d20
	 tUI5gnNsSSrwgGJPdSmfZcaQCo5FWwIut8MVWOOpHKITw21yV/1VHJWLDJo77glhs2
	 EnM/yx0+GSj3KD01fu3Qf2lFXfjOmZrOUSVjWoah8pr09ieLaZFtyASO4VJOQd8YJI
	 TQrA08SbvxarA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD0DECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166377845336.16999.7404663287040278739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566dd50d848de8bab5964f788e8b44cf40895ca32bc1fb8c8501dc8d9e2230cc
Date: Wed, 21 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663778453

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22B32904
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 730B8C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665867653;
	bh=FXB+vGcJHUb4JWU09wQhcBt2jJn2yUhc00beeVtb7uQ=;
	h=To:Subject:From:Date:From;
	b=Kldki13NPFQ5iZia3qh9Qvh1CqgG6csB8nVIFFY8vf/LM+1ZqnLGWrzTYfLAm3hHZ
	 h3L1rSVmEU0XT3Y18qdoD1wz0nnJItkqMv5cRaRuZrMBj8LwaOXspEVmc77sEpTvyX
	 6EM/hjU/O4jYwIytxGoXeDDJzNnCtgfiIoyAIHH2aw6LD9Y9kS5uYFq2275PYmq0Gv
	 QDDrKld88tS/B7Yb7xvwl6M2jxWMGwNbHYppl7/88fg5vj4iAPeaG8TtGMVyrwrEsy
	 I1ZAL2BmZd8D3LvQN5mPn/DHHivjfuwnd38E4hMFlrbnL+PKea7SH57716MEh5lYFE
	 G6isY+yPwmO2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA24C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166586765336.6464.18424056672975152603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca2092dc3a845e25809d3f18622bf671cc3462f6df233e2b6963b36b51bf783
Date: Sat, 15 Oct 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665867653

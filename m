Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8C6370
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73DC1C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665711653;
	bh=PMfpEzPyIpIJkHpxPWWtVyqm8rinzMoUX+zvJyVhA0U=;
	h=To:Subject:From:Date:From;
	b=ZZHU7SbvrP1P9UEULVlmFrzTZHAX0ryYTMuO9U6EZhaRviMVU6OtTUAcd812tAsgI
	 IUyrIpCmr1RF4ytfaMRsQcUcr4ClAD5SxdfCNO27piGJBceJz3dZVTE7gW4CVKenm5
	 UJNRHr5V9sFSVIeZ53rXOVpKTHwI41EPtPrr/VubE944tPknvnHNdi8k4B6lrKxrjc
	 GKrW39k7IGwPR/NFRoJybI175URS6J0huShU/5BmlOxIAgpGE3XuT75M3nUQ5mTCD1
	 bc8sAZv+vnIb5DCAEGEgPjbLrgAK66PKTsNmRVoifdfU29ZEhOO4IzO7Q/0MBmw00d
	 uaVuVrTcZnkYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5609EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166571165334.7147.2394138001863676298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aafc8976e600b1ef74aec7564df5a5f35569b6657daebd7d021998e16900f0d3
Date: Fri, 14 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665711653

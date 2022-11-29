Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF57A650
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7168AC433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669704654;
	bh=zN8SAgQW9g/hZbcQaSsJtOFE32PV+5qDP5LXpHO0ZO0=;
	h=To:Subject:From:Date:From;
	b=ZnZYyFT2RnbWlpBbhcK0LAASwK8M0jyDCG/o8lYBaB3Kwe+CNPUCTr8rUc4mMLyKi
	 hhSTFqE3m4sG+Y8ps9wgqZ+L1wCsyGsNln3sG9wm4XAMRvrMdDyxR3bcUCK7yj+N6b
	 f8eCnWWLpq+7JLHpeAN/sI8d92IL9f4/meN/hlTGzDxo6O2LDX3CrqdGIRuY55wJn3
	 hdZkD2BI1VSzi9EkukmOaqsG+xmdJ36B4RosnbiV+tDr9fYDO6j+Rbaqdas/ShubmD
	 cfYqePzv8lxS8NQ9R60ueSrQBVS5b8jQtAxsvRcdTVq+BPxXduFu93+mC71tvcCBuy
	 3xgf9VJmw1BCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59114C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166970465435.31942.3558282146664331230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7825491d020132ff6263f121b84b5fa3813854ac345b2563d7d087f739ff3f0
Date: Tue, 29 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669704654

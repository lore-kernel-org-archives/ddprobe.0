Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302D98BEC
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 17:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D680AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 17:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674580385;
	bh=1LnZ6/WBeE7S+/vb4Az5s7cc7v0QmKyJ6g2t5Xc6GDM=;
	h=To:Subject:From:Date:From;
	b=HTbGUdO2e+0EPtqfaI5mTNRPA3K/MEnJugi/9YdGnCD+7agTuHJZEJQosjrQ875DV
	 43RCvIVk9wQue9/KvyrShzpVPGV23mMoXUxeO/jDdeSjwi5Fg9m5C6j7RO8OjXNafs
	 3mnMWQ6H0Syyvhay5nKoHSR5c8SHgCW2JrRezgbIdtg53ZGPUUbAv8AIw8KlCnX6kC
	 GmZouqzSfWooaa0yTxUyr/Oepe6z8rcDLKp1P1Ijp/CBdXeUJumfTcAGyz5Efu/Jcn
	 ekeKQorGucANoDILhMzDGbk7fOxFSHscfIw4++NgD0lB2D/PdI6+hEbqPsRnFmbAFR
	 jmNXircA71dLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3C4C25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 17:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167458038574.31515.9129053538274583335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb8fb4ae089541187bb586a35190ae5b326fc3d8bb7f8d5c12b3074c41c29ad
Date: Tue, 24 Jan 2023 17:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674580385

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6B933FA
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDFCC433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672919487;
	bh=ORdAW+G55bIm4syB2A7ENA+FTpfekV7riWww+/YxY6U=;
	h=To:Subject:From:Date:From;
	b=VvMlBNvgbVo9qqej5De90uuwXMoUA1KGRB7JJ7qNwcGhf9AiaAZXANx1rlSX9TBfB
	 XW4BZF2f6mmGe/f4nop6gT9mOtrX6SRESgaU3Dm+JNgJZOqTTTguPjLllGem3KodDS
	 OtitguY673Y4S9Yel7gKbA5Lo6dAr8Bpy/aryxuznu9ZZ13gifAaNtoyIFdRcQY6a2
	 7GN3PFajxslI1NfehYue19p6g4Dn0VDdLhFvojKaHgHVphdrR0WqSvvV0c5j0Cnvii
	 nSX39fSD/SJgYu+8IEmUidWBTteQU0cr9Yqcgvnb1v9F0JSYpje1g9JhrXjcTbati4
	 jbHamngN6OS4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 632A5C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167291948739.2162.235045677982638161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcbac6e5eed0ba6c9b0f53594082d4b5e324dffdeff900d0891c431ed6404a8a
Date: Thu, 05 Jan 2023 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672919487

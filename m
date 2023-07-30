Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F3715BD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 12:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C555FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 12:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690719728;
	bh=BbzhcOXCpqonGPMFDUkMBOg5KcWpoADiAdWONUiDQjs=;
	h=To:Subject:From:Date:From;
	b=IaF7AKIxrvx4RgFhMibZohEoYl5WlO/bOJnnyBFcy/JUNWwPZC3WSmY2TIMOHreED
	 /pt8TBsmJEm2q0PCpLMBToDg6AIDzJTFNnXtyWOFv7pyH6UzHtXNhm5suRIVFNX+D8
	 JafQTh3FDEWRE5bqVUhfxOTeRLgtT4984HNq11dSNCfSBGcqxoO9VyLNNPGVCm+pYM
	 9lvxXhn2CpsABMnVwN+NPCJebKDUmsBwftYo0RXhNPXDZPqstY+b88kjbLW3Q0aQUl
	 SF/Peaism2fs8mcGrCnrK3p2BRrBPuvVhY9HYNlF71ZSpUEnB3hBTUuNhPDarxxzoJ
	 YLODNBH4DSjkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCC7C001DF
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 12:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169071972869.21063.12629847230804773392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ccd57524fe8285a0142a59f6b422ef8170f955e3f7cf6a9d64fdee270e739c2
Date: Sun, 30 Jul 2023 12:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690719728

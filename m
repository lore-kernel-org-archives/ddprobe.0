Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9437E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 738ECC433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669497054;
	bh=qmdeo+xQHpjbdIyqOGNe3Gg3Osy6lecWo5ocXjiBahk=;
	h=To:Subject:From:Date:From;
	b=LUtF1Q7Kyl9bP2S6HiZv2AnwYejyX3Ls4XPsUWErSnnGw+PRZU5ANMOsu5DsX1dge
	 Bw5okOVJujn49NEHQ7EuuYjKAUv+eyKCXp1SgRkYXOsjMlCDT1Zua3cwQku4Jzd8nT
	 L6In2Jr4feEVoG8wmLvaEtXAzYSyYgsJLIGZJ9QcVvbqaH6SCTvUOPFULGmv6wCGwZ
	 KBJIp8wf8fsxKrgXIVuobocdhmPMTQqpOy1jv53HUsiglH88MmD/zBEqxw5AV2eVrN
	 BC3rojJGy0jr2x6hBSqeOxr0FlkoLSBQIwfhnLfhLgcKlTnHT0rjEhFEQfbBrZCdfj
	 N1g7bPEFkQJKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57FE4C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166949705435.8981.13752391069677269286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 928cd86f78c0ea06108900407654cf48a2b0b8d58d7f5acdf0e2cb377694dc90
Date: Sat, 26 Nov 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669497054

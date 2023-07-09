Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 816A128E3
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 23:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFFB5C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 23:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688945829;
	bh=EyZeGqhdXP1TBLbYldo4y/3tE4VQ2kC1Be2de1LalKs=;
	h=To:Subject:From:Date:From;
	b=H10Y5Z96v6/Hx+JmPfQCDP2KVWK07qaShr83azchokiUSp/xvf0iXqzKOfyeZ+bJH
	 yH1OP8U/JaSAsJaRcyqfsTInvmUUB2ZrsavZJSV67BPBUJmciAXnRI6BepHHSy+p+Z
	 i+jBIC+DFL4qS5dncdsbs0TlNTymtAgvPBv/Zh6k5zhh4TGP8u8cCH2AoAozBEy1Ox
	 PIucWrdPMFoMCf96IwnmMGtqHEj+gt11EUzEMKHBvtvuVGvuIaMikasRMtCU6APN5+
	 zrEwh8/LNvk/+Dv4j1MGf3QFsEe8WFodAnEeGwNOjtR0P212J98eJh3IyOac33+e49
	 OS0uUGfWEGgiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6AE1EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 23:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168894582877.9031.4940388701283376492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5369562bc8fed45e09ebdb9ecf618f45f249f52063e705b605e61fd3133aee
Date: Sun, 09 Jul 2023 23:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688945828

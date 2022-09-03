Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C349F1102
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B64C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662194453;
	bh=FUqKPFsMRNEr4qW19TljX6uBrGGAE58/TCXIeX27XQ0=;
	h=To:Subject:From:Date:From;
	b=BhS+6nhsnz3KGB/zp+OdCm/o1aGQjhpPeTbQ4mLmj48ALiB1LryrQlIYV94MFXcQ8
	 7pF0zx0y5kXf4MRk2wpzFJtyqgjmYLAGzKJHyFuXaTXgs/3sJ81mquZQ8XGdAuGxk9
	 0xNtt9ltuFha4owDG2Dsjy+jNvlJnRUnAdKm2KdIscD7HH4rNzAxyVPtO5epl+K8cX
	 Oym/GRoraGt9srwzGswXaHsX8ngYfWLAC82muHsQ2w9g5Woc0stBI4Sjifpb5aFABe
	 bYmt5KYdJDCD4xsErdS0o80xAhM1x7JVuS9pmfYcimGmFL+eDf4ly7IcP4daquecPo
	 g/nJIbJ5lfHmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57636ECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166219445333.3261.5234944113368142871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4450df0b527cbe6cab91009450cf4cf27f324d481872e923f7dbeb6ebbe1fceb
Date: Sat, 03 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662194453

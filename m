Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0E0258F
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 22:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEFFC433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 22:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693695248;
	bh=94MwMAmCgACM+w0d9Pi5RZYnnzkkyHXgKFlAV+4+Wq0=;
	h=To:Subject:From:Date:From;
	b=SQWFWofmMSpw+y+y3hBLWn23/yASAVDxj9nfbwGDCQyzBUM3PCmAxudgUC6Gq8Vnv
	 CV2zXCzhsfYAn91CypI3PtH+gOVqN3CgjbwVSXJrJ61N9jrRgsppAJ9jKKMPhCs0Pd
	 7Y3aLDrO1d1Z5bkPainehsLlnJbcA19Msm0APr9vZT/TFJ0B7p4gvt+FPk/b/e06lo
	 0EvqpGyyjUeaAcniEXjgIbo0FqMtheQ9+GdFrN7nG27Juvwgg0oZSRTvNO0q7R1Zh5
	 QjFAwwHeTX1PW3feQJWC7HFAbbhyREXA3YLOcMxogS7/y3NK+F4P1HSVa/7/A85uUW
	 7ShDUiG0VSJoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43B0C71153
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 22:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169369524869.751.5206172739235110928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b93b4c2458f6f5c08407519bcc62ad741ea93272f37b720ac5ef3a7a4e6ef8b
Date: Sat, 02 Sep 2023 22:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693695248

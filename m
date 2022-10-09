Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2BA65C97
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70304C433D7
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665352853;
	bh=k9IxL7RfMElcEYhlwFxWkw4Zbwt6HTxVE0X8j9FvhNw=;
	h=To:Subject:From:Date:From;
	b=J1Ja/Zo0nDgqxqKMfu2WlD10y26oz2kVH86q6GI1QmJqToKbe4215E8HuN2edWlwj
	 LSXH3+p+015KFx4yvet7RZeQcVysivtR1dxkx65qB7WHSEtcZWfEC0EHhWPo3UBgHQ
	 PGcrBG0vgnJ9gKEpYYWa4W/vs3Wc4x03cjYKPriKD5bJcznV5x20Olace800/RPW15
	 Z/GHJn/h3HH6aPp5o7ACeHPlY/1+nSWRpy8EQR22TGwFmXOk3Wz6RKU+/r/hWy1bT3
	 QyZvWUzDtMxYmNkkELJ77ZKIquXvewij1+D2OnrYUAsurEcSr0EGFI1yB9BteBvirU
	 MH0z/D+pehVFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56943C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166535285334.31742.10329809093328708750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ada03308d7a7d8e56793a77ae140195a891dda4bc3e802c96fd03932d638e2
Date: Sun, 09 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665352853

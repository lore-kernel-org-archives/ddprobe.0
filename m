Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AED27460
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74BBC433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673021487;
	bh=RBsG27s2pTG8sv3k5xkiwlcs2k9izgYGlRqyGMKPbF4=;
	h=To:Subject:From:Date:From;
	b=LTiBAItHlzll5KU1OjrvBbW4thNdR9CQ5Vbd7+b/vYqLlx75yGW3bPJI9IabwaqYK
	 MpXl+mvRmiWxt+oKnR5dV8vOvuySvy7w6JaLwTYA0a1+WkCUs6dWfhfujEyobk/lBV
	 8NoeZWLmfDvmsJ4sFZvmuL80+Qt+89qTv84YattAf263YQ2J/X5+leVV1f4XqJERIs
	 mHkpIChkddz+GONoyJFI4L3LKNAw2lOs89u777v0An1wxy8yS2EZTfOBxD2Ak7v7ew
	 RNStxxbnJN4N5MFYAtL7X051zjsHjCKxu8gEekkyywFIBPawIy5KyEnXw1FeSBxs/k
	 yljtfzIm3BERw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88FB6C4708D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167302148753.4309.12586537513500058372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b15b637bcc77af5f0b539f5e4d838d7fe34aa3ec4b5573dc5df48098354f84d8
Date: Fri, 06 Jan 2023 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673021487

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BCF110FC
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 20:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4A6FC433EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 20:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686168185;
	bh=O4OTnyD55C2Acsp09G3XfzmzqinTZx+RFCF+ubUm7xs=;
	h=To:Subject:From:Date:From;
	b=LJBPcND5+JrJs54fD7rcA7Xle1PFGjzAk+UMymYpUi9OBKUXhahzhly8Zze6U6ckB
	 6oLd8VlnXBX9jirBC1+G1oLuuPCLhi2DFqThsMv5LCv431RGsoeSSqaMfIRWHYJpm0
	 rU/SXSoASf+ckCzLJaqWZTik/wL1HVlsh1HoPtuzBmogZxu0RvKOOIszHGbIG4/pdx
	 fDvr5ZP8nGLoLgN1cBQ3XyfX4CCsfSUXi18nk/c9IHv0O0OODMtoEYB6P7gTobmWD8
	 pX6jaqcnHMkDISJEYGRtSddBB5CFTK84ZihDhl236JMxE1QHupCSxqKT992lNR1Gs/
	 xh4TED2RwbQsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A1AC77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 20:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168616818577.15860.13228965746298325571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702626fc4e5f27b7af89f6640aa0fe721040cf4bb251a171e8ea02e10af8e9b3
Date: Wed, 07 Jun 2023 20:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686168185

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AD9BA35
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsCQtgP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FFB8C433C8
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698588496;
	bh=KX2dvxpfZzfyHCQGuRD34ZI7nsMp6ukQQnuz8LKvuUY=;
	h=To:Subject:From:Date:From;
	b=GsCQtgP0ec/n6YlqYG4HiD/cGvjpOYFYRwgsJjlKSF1emA0JyyPvTYyEK4TTh0MwQ
	 kFWV/puOu5RvKiyAdOINC8UqyiUnMjUI/PZSUskZ0CborEWsPVOozB4DKc88Pu+QLj
	 vS0ZrfbYBwP8+3r4r0Tc4hMozQ6NM2PgZ9tNwxIxgU7g3xPFIRk8FCgB00AjJp+qQR
	 3dDvT9GmKxpTNSyB6ziRMaURKop0+U+LWJJyiKoJXfJrIuiFRSSAmHEGr9jMwmFVM9
	 DPVXiPr4s+diagH3e8q2/FXCP/iSWjVEIrS0g7Pz2wVC1IOpDd2Df7QnOnh2exoe7C
	 U1Lk7jeZFQBCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70D5DC4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169858849642.23907.13737121782001587907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99c79768789020622ca4fee77cf9cb08638324cb839f7c22e71a3b5e3253468
Date: Sun, 29 Oct 2023 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698588496

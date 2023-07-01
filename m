Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460024415
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 14:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D9DC433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 14:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688223248;
	bh=rE4+LrC9rx0Ks+3qBv6f/mLaBnLJKYvF2ITzBRm7N40=;
	h=To:Subject:From:Date:From;
	b=JDlWqSP6hHpas2EiEAbIcjXkNbYV3b02xX3Dxs0uV4Ueqtqlug2iSPULseN2/Gyp/
	 ZWvmuCGBblTWeHHP5ms2hnrJaVlSu9ZyAM+F1XKX5/YOKVRQFwruteUP0lpPPGS79V
	 HO7RVQPsok2Rg9mNp1fCGYkOlJALgJTMJAdfQiYjXDxTlBdoNUYzrxhNfVpbRBM+Cc
	 bxD2LMcR+KFtPvmFp3VYZEUrRlqFNfYtKDu5APLdYKtayvz0YML+tiQYtsj3oqM9+N
	 4ZYsIGFJLRm05mwdaXoaaEoOuudy8tTBK92t8I/PnqYl4alzfkE3E3ZF2PJoqxM/Dp
	 UigdadyEzMNmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D08EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 14:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168822324873.30587.14460573114770193216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3baf7bfa010ce82df5adbe4cf821e0c7cf7524c8c4dbeddfc2edbae5971ff9f
Date: Sat, 01 Jul 2023 14:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688223248

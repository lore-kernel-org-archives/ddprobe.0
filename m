Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C256C17C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 730CFC433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664787653;
	bh=oRPyVAAaQNTwrSmE15UwMvUg9R697aHohUDZtX3t6TY=;
	h=To:Subject:From:Date:From;
	b=Gmo32lBbqwoC+fDefsp644PSQMpdO4ZX0D7wQQOUt1lqDOXOXT4q1Z+SXhqdYOQkh
	 9IfhcHDMIdbDbfsokrwmgB9M0Jdt+ujiTZNkala/Oj07ZyKHwig2S0RWJCw6aeptRY
	 9r5oJbraai4DB6ZcJIZgnXycZ8hl5vdOz8lpFaHLVEYDs5eVsScqXPkTax8VWX5nZZ
	 YNjOSqHDkzLMUpQaJWcp1u8fO10kO9lXg0IL5ZGFPg2ws/bNyDT5rYpnc0cXpLWsCW
	 e4ThIXODbLVVWB8BLjA+pREmUN0WMrbHuHEamDnbRdU84TRzJD2saag2h3jOYhj6ZR
	 BD+nEuiIyfLpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AE9C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166478765334.16721.11150092094006529925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7680eb501f7a6f6039ab93a407c298ac95437b610a0ae23b41071205687e2b83
Date: Mon, 03 Oct 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664787653

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FB62F2D
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7167BC433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664749853;
	bh=q9sZZxnNeZEAID5rqGKtXxQa2nk1xkg6ttN90EkcFL0=;
	h=To:Subject:From:Date:From;
	b=chpHx+r1itHJAl6BMQv0E8/oV5pJ0Tl7yfheZrlsboN937P2MBvzrQQJZUHu0B4vY
	 wHPWgWICTKt/WxIDRGwCET0FAc1lIQB51Z6tDoeK0/+aIlrwnFV1cNTR4SEuAq7/B1
	 LMK9mvVphw8N9RQZtl7CsHhdXIddR9IKdB25OXZ8sgFS2dXqMHHLFp3ZWJ6j5bieVG
	 1DPMYy5Z4IWXA3g5Mp86BJi298mDM7EKFlRNjkOt3sqFwh8HLt7xm+b2qcrMIwVDGI
	 SlpdSYFAxG5dS/AbAtbGdayz6pbwIaJ0qIhzodnIA8tz8cFS1Sbhi7faD87nfMChAg
	 FKKNZ7s7sOkUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B2AC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166474985333.29134.16695770890380997264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf10103e32b797d5990d4d166d13a40e69a4264a5ed8ba624c8793a005c3ebc
Date: Sun, 02 Oct 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664749853

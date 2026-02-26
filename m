Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B50E364945
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772133894; cv=none; b=KfvhISJBdb10vvdtRwveAhCAVW/m/lS0c7GTXaJ7Oz/AkrqftlDduTLC7E/Uxo24jQWTdq7AbA8RgiF3Jr6hi6YwlxDzs9CA2F1Yz+59jAskkMDkCl492Lr/sJ7NQrq+pjzBSfguG1T2FAgueRJ52xDtqWrVKZ/b4frJyrjZv/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772133894; c=relaxed/simple;
	bh=bEiSHo34OkKyqfrXno9LgpjlyF3bGGv4SIki55uJbYY=;
	h=To:Subject:From:Message-Id:Date; b=bd1JJXUQT8lDl1TCVY0p7P8wdyR3GreMGVMPCCaC7HBaYeF2zP5lqL4scky6RXO563aKF/Ua+x2VRiq8mwVxoyM7mSKDYdwloXYD3fvtbvxi2CcFa4ZfMQRwtN6Dnuf/uNyjLoyxfQaXH2p9980C2Jl6KgLTsN4ykeW98MiZF+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAQErZAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAQErZAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7840C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772133893;
	bh=bEiSHo34OkKyqfrXno9LgpjlyF3bGGv4SIki55uJbYY=;
	h=To:Subject:From:Date:From;
	b=rAQErZAzD9sn4PR2VjztepnpAUOVvKVUNZQl1RYfvJ8LRlZPR0twIrwTdHyzr9Y2r
	 BRYKaWNYc2bW7vqQwUZVK62xY47AvSDIc8HJqgyMK8qWUQAJ2bxnod9f7FsLh9UeQT
	 vo1JnO124N6E2dxfIuhcamjlxXkPFK5ZxjIt/3cKskT1vAs7s6ZYFkhIOE9Kp1VPSn
	 Th2STlXctFn2qSR4d1xqVwdMZk7f+7lnSrBu+syUoV1luazZT6qAndEcVDdzbk3ToW
	 7VVir7875IyNxEKs+Ppc0t2vvY2JvQKbXyNRMLZf+sAJyk/yQRBgKDb8bE4QBlK3fg
	 w29Q7rM0F+uYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BFFFD8FFA
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213389362.14855.7837951396475767241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a699f207dce6b46f724a124bcc6d037fe5f67f8593f68edfed86b650301acd2
Date: Thu, 26 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772133893

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF905258D
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 729F6C433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667226054;
	bh=vf5RmMRhoX0sWB3nSRvYW2kmXHSdq/JBENcGHaj2tEg=;
	h=To:Subject:From:Date:From;
	b=FKi94eYWN7HXt4gNy8YAINCyDbqxwjn4TomQn9ew54+PuBVCsp3EXdzUKfluvu/Gc
	 aUnoUzc61UQcss+DtDmO2/XqYAnObqaVUPynY8E5Th853Q5t6x/UociC3Xui+FQ+Vy
	 S/vRBDNPinOwQWFvMXG+43xOSNyBDnsDVkFLnJ/YOuSaG0p67uikL5oXVNTAKvNVn9
	 FgnoYGODQ9j48xxg9ObX4NsjFH8fIYokXdGXumIOT0o/AdOSkIqTxHKzNcWUYTKRex
	 WdOC0PveiphXpfjTrEV1JLvFR4R0gkpsprLxJI+mDLuZ1sFcWMpiLSqdcntIO+Oltb
	 nuzINKCAMbeaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547D2FA3741
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166722605433.13388.12000176014941076697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba030d8ceb2afa3c2c3d2e94114656601e44a7cdf917bef8835bf8eac1120e9
Date: Mon, 31 Oct 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667226054

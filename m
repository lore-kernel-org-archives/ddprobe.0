Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE207362
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FF09C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668846654;
	bh=OTTS4OUEfsuIjmRqWikvkewUZYyYTU9UDOb1BSeVpkE=;
	h=To:Subject:From:Date:From;
	b=l1iL2Dq80o29jTAPsViWznmZofmkSsXKILcgbAXTUNgDpF/rbZXkjnxVhRY0wRvb9
	 jiifM26ldQ/wQTrW3kZ3ZyMb/L3Q4G5kIwY4YUt+y5fj5r64Vy/NYM+lnJ1H0FQegH
	 t46MRsQ6bVQLpnIWLrNX+rUlOU/EyU1/TAjILoJ23+2T6s+Ix87bJTI01x6nzJ+UFF
	 GtiuI6ujx1KBZ65WQ5pY8DsNRpsBh6ys84+gBgK0muzWtd9XpLHUj/X+jWJWDd7BRG
	 Wcwrm0qDZxo4gw01E8FPTPat3M1zNDX8d1eueu14Z0VJXIa75YYgajn8ZRDEhUeEfA
	 2asbruFs/xjUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72BBAC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166884665443.11189.6657805511283655164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c3edf8aa5f2c7825b222421401c77faa7da0e5bbdd728185f97bf33e98b877e
Date: Sat, 19 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668846654

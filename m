Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1086123760
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmkNZiFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A28EC433C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700740696;
	bh=UfYpGMt5vbTrLUoFBug89R6jiJ7QyOk2948VWhdqOtM=;
	h=To:Subject:From:Date:From;
	b=JmkNZiFC/q0CNteYWOUuo7cyZqTETjDfiNONAoMx9hkVL5Ga4t3tK7qbVMeZQvAJg
	 Q5ZHHMcpLY2pye94ZFC8E2tjMstvNmgWrbnM4AFGm19c4oLmsanWvcbeDRXXNSbQgg
	 Tlc9x0O3jiR59XLKujlA0i3xfJNzZJoBz2rAamXhgZ0xWeDZSfO3Le9GQwqQb3zC60
	 Yd+B0P45JvUxTuR2eVURp/V/jHsZsVn0UDRz9IH7Bk0dhM1T4ExpLrGaHVb+1UnVDR
	 wpkdpbWqU4rLC2L1S5TtYAgOWh16O6ipnnL0k/5+lYYvUvZMN78tmTMVGI16YLzmqx
	 zzYACPLmCxsWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68E9EC624B4
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170074069641.17947.5349644476262097535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2127932e70436dcdf93714fb2f6e89b3a2a7ec80c3f2ab569525bab6bbcb91c0
Date: Thu, 23 Nov 2023 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700740696

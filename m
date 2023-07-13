Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D70E79D1
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 08:19:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6479C433C8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 08:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689236348;
	bh=7QTaIX8QyZ1w/c80G0OE7VWzNrzqofT0PIlBlf5V+EI=;
	h=To:Subject:From:Date:From;
	b=ToX53xTwlbvnH99l5Ae+BHWSwiWJncO8GNSUBmIWr1OqIldzGBHhovE7ZHEBk1ioq
	 x0L0en5j+7IKvqD+3nHpdXFA8P5nl2IDtn1n3t2p5gKRC1skMCYWdxDPK4YAKHv9Ck
	 sG7dogaOhAJ8IOlLJYUNDQyvzhgDgjcftUIQPJ2CaPcmc4R2myTI6kk1PwDDPXorIl
	 JsjmW2n7xPk7FaJM7W0o8mqUFGNTL7dbIjSV7Y7GaI/kaah9fpW7l58sWQDmfk2YVE
	 2LrcXa64o79hrSTi3FZXViaTykcM81nn9UfWbGctUKt3QBQ8VHvr6026WRFMRs4j+X
	 z/I+AJrwRF6mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9206EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 08:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168923634868.14731.16287222193820881834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f973d46772d073ebf8b1e14f73cdbd719736bb678db7d5d550a7b3f78510c6cf
Date: Thu, 13 Jul 2023 08:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689236348

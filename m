Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E31C1773F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 16:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C809DC433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 16:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687278128;
	bh=wSjtpxhtlnd4hqn0+FJWct1RcG2NbeHLa0dMZLNI2vc=;
	h=To:Subject:From:Date:From;
	b=ROmCY99RqHX8El7cTJTXP3pdMNBicPv2jiMsup+ZY6jLOLaJyEmc8jPqAMOM4rU9Y
	 7HLP//S/lXAIb+Kwq/BSMPoiiEbEiRzSmzb0iaetwgR9HQgO1dflvq0fYu2DgDh6Dx
	 zEpzTxaoSVn558BgR1iwmcImhfXlIwGu79ND7124uMq+lQ4dUGGHHqL66AjSU0Vzfx
	 Sxjcn2pgz8cKDfs7j+yjwW/qsTKHe1nhzCK4aOBWRWW2TOXphdkR0XBe7MfpW3w+zx
	 te3rx71aofNAk4NVzJZc97GK/LUw7e1EDqeEuz6fzHa9fFt8NE2YjN5Otek5wpo9Gq
	 uYeaw2pPvmACg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A9BEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 16:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168727812867.15075.18242158920220731678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e01a1f978e0ee28f257aaeb4e12c2d3fe905d4c72d5bee6651b263c83e0c5d73
Date: Tue, 20 Jun 2023 16:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687278128

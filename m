Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB3C79F0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 14:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9FE0C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 14:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687790588;
	bh=2GEl+zWV4PbIYfQiK2DLCvoIzRDNNxtxA5NNZ4IdJVw=;
	h=To:Subject:From:Date:From;
	b=KynP9HglDCEqT4tOOGq/zimrTMoElcrpqJJruDmmTNhe86VrcjtgdSoO13WoDxgWb
	 /+Q9npd0r4IeyBfcaxdSV90+vxVzoouy+XYgUYFZxBY7o//tTN+OAs3ow7T/cUQbdt
	 inFeEVviiFMndX1edWHhMbht6wz/6ZTbkptJyAxyfETcUriXGqfipE47oTpuvomMSw
	 nl1Y3hyOcZVqr2U1jhI2M1uEBA9TOCy9VStR3HdJYtzbIcnNImCxVPHvvEos+9mpe3
	 r/9rSaa16DTS1/CbtCGUEl++OqSzz9jhq33fFzccGN1VrGGW0fxlHnL1nNOBOO0bDM
	 NT+cyOx0rJiLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD95EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 14:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168779058882.20773.10580307946297876786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507d8d24692822ef058394ed2e8e63c910b92e302346d8838ffe95690ab6adca
Date: Mon, 26 Jun 2023 14:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687790588

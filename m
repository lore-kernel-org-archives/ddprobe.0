Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613818C1E
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 17:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A8A1C433D2
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 17:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685379726;
	bh=N9MCP5McUOdbUFCQJ+X6Z7HHY5Foajm/3VvPaA3FWVw=;
	h=To:Subject:From:Date:From;
	b=EiylwwELUFWyAVacixFmOqIgSlG2vhLbktf8gi1h6R5gwDPO7V/A0nYrJlvd8MHrF
	 mJw91mADky/cgTMyVoe5BJUI2wTrM41PpTsswr70yJdSGHv/k9U6PlzcYRCCz/HjEt
	 swN8arAb8b37XvqLi3maLS2dQywYk23rKORCy6m9luKTtzol2xeMOPrbnmJW39N9Ra
	 REf9PNKmgG+IZtL1+VcUt6bihUVV3Q3Kx3lwripNIyAayutXtSB6aNpc4waiZXkuM5
	 jO72n64w/ibKbpCEAVWwfGFAobizi8rI8PHcvqkOkLVJDmKkJL8NQyyiGh+wBpUvPY
	 IeNxAOym4AuRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2D62C7EE23
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 17:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168537972580.19405.17190276985789466984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5368590e0e12e0d3aff7f35d8bf70f3a29f2292d8d4ea18958eb19d7bd0104ba
Date: Mon, 29 May 2023 17:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685379725

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6499E29B2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 15:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15B1CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 15:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676041446;
	bh=wobkOh+5niUHKdITNovkNOHz+6iQJDafaxouHBQF8kk=;
	h=To:Subject:From:Date:From;
	b=JyHxEY8hy1TrNP7FgGF/Uqeeq1nLvywS/KpcyIttxLaQGHhqYw52FbvArXf4hoZYx
	 02rVqpHcFDR07GwRs5Cu6DS6/WRzMlS7/nTR4rahGG2ShAcZ/Kw3Fip/P4/kENL37m
	 AqsgoosQU3XuMDOHgI2icu38l3z9ZYkibpZkgFlpJFsHWJOdMX9NoGxQL7gQERIM4C
	 owKfTpVfjAkwVt0kE7oGLAtVKg4tr03VzHkAYPnc90S2gXLhlxKR3z9YLTnN2j63AW
	 or1SYhBuiLtxHBlAh45cW7sn6/b0Jk7kWrM4jsqhKksK78vyHvdKoi6LRSsxezbnjN
	 im7HG50Ouz3rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC5EFC05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 15:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167604144595.26392.4420249666722361013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2844877b050629560e3d390b50ff9157381f224158b890712c6af134973c885d
Date: Fri, 10 Feb 2023 15:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676041445

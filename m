Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55813D8A
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C33BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666629653;
	bh=NOscLObx68isHNnx3XBI+WWYJEhN8OAtqCH1SuxhFcY=;
	h=To:Subject:From:Date:From;
	b=tUrWisfZWgPuCbK32gp7zcfg69vPbppKang872UcMhh2PXojPB7TnaE3UUMrAHVvb
	 /9yHaPeHiauZjg9fVifFE3ZUdebhtWAyqq3FlGv+z7aVFS6s8GofocXcfaYuluQLHK
	 fSXt0FGFr9hzADOAWnhjVP3VaWNzvbBTzxO59pChwZ9n2ZcyQqRkO9Kkxw69/QVv/8
	 p78a1nqNVyxQJtTx1P/GnbFZ3tGurMa1QBJa93GNM/vayEb5g2UC1rGR7irfHRPY7h
	 0sagygWUcWu86J6PD8wJW/q+3dv4k9ja32G3M6z0CuJnCbsGHcAqsaveMZbjWJfqn9
	 zSEE9OUclBevQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD66FA373F
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166662965332.9264.13333294630079589759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0763a61f2bbb6d6c6e940e8ef8194586900e624d3f99820240c6de69a0b1eeda
Date: Mon, 24 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666629653

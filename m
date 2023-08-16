Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FFA15AEA
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 15:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C979CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 15:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692200588;
	bh=N4d1QANogVZFm6EpQjTgxavEJOwLi1CT4qfNJ63VO7Q=;
	h=To:Subject:From:Date:From;
	b=TugmZbB6cUdfEP4qWwlIu2AKyOICgAtUDr9T5Y261QQdF07HvdPae7zwfbArkP2TX
	 1WSNyDfFqTtYi8n3X1Ff4yf1vtYg0d8VF8etg9UZ6sV/sdV/SW9jmPzS2h7yzcjBQF
	 K8uPn2bZM8X/hYp5zJ4aPa4Ee6tiovfLkO7FFb8HC8g6AhxY88h4LusOUCS6BV2Viz
	 1P4wdZHPLnhg5J7F7XSX2vav8PS+NGbYzMfDMLsJzA+co8WI8uApAW86UEJCeMBrGV
	 Gx+rX7fLmDpQZiW3F+P+SIcjOIPG7Ux/D6LcGfVLYTOYLcqyUCzMznCof3FUu/MMIa
	 0AXncoIXPxN3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0213C001B0
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 15:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169220058867.4883.1137551685980995734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f5cc045be2791a278028da13713e493cedafc1a827fab3c9060056c6cd78b0
Date: Wed, 16 Aug 2023 15:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692200588

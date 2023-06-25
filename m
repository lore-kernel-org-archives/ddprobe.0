Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED43ECE
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 11:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE03C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 11:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687690988;
	bh=/3ECF6BSsJ0K2M24R/12P68TWM5L5tBpDAvSCZObPAE=;
	h=To:Subject:From:Date:From;
	b=NQp+bt1mI56RUqdEYWd0r3ljhkaQ9fwkXtHfUjQgeMo1Z4JzpI7hoeCEoAnP/Ut6x
	 dMojcV3PqaqfR1oO5YIZyLqbQvoQSSDyKnRZU5hvVGCQhXas/0YLYxcmBmjJzdcvSt
	 uZQnqB3BebuGUYqsy1qUXUd3Ia17ha/FbiuKxZtqBVwpT1ZLBjVcKPxMRN8gdjc2ha
	 Wp2aZayDm6PDEl0HLwKkViq1Tcbg/K3k7NwtKtKWqX+OaMAEVvXy2HObfGb7rB1NS1
	 XPBX34jroy5iD2tOy37Mw00CTTd4Ff16YDaEBfYjdW6vxEef2uomr1UxzQF29niyp/
	 AXKWpQbGcpqdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF0AEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 11:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168769098872.27574.16703823377411676194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0cf0862cfdc23689ba5c4589622807a2eaefeb8f99372162fb5e71ea5d65ef
Date: Sun, 25 Jun 2023 11:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687690988

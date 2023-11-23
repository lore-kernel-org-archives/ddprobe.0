Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6954C3A6
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ims5bnZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB06C433C9
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700767696;
	bh=Pw+70A2ImvZBB6vya8/KWs/mDk9WgtTiuvxdHhqHJFQ=;
	h=To:Subject:From:Date:From;
	b=Ims5bnZ/JSDoy5EuL07aW/8vlp7wA93BWfCtOjrQdmtY11TT/x0GNMNLk0p7YVaqd
	 1XFjFFIlDKWZqTaf3aEU3mU8XYYKHKZzFac6D6D/kCOl1Y7V5NNLTsl/ftJ/MXxzhg
	 smS6ISUEhEps/Z8kVnbCz1EJwm6MiXsT74U9DTEVK6H4VHFkj3Jt1wZIc03ItpNSxj
	 Kr1DIq5v2JgCMZvnnnccqy9SvoV79dYMI3yn0/ZRPsg58UjyOJVycn1rmVIsVJGn8O
	 vgSgblZSRxOq2Gd+vkTQwXvjil1IvNdk1gdXrOBPjTnQ9WK7X+/e0med5iuBlXegxI
	 ljiWc/tCkbklQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FDC6C5AD4C
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170076769638.16758.4439398835756085008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d070a909b1cb7fea80aae3d6d956769a6da75eb57f8d0e28299329339d0ecddd
Date: Thu, 23 Nov 2023 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700767696

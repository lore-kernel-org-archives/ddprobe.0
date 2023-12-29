Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410F512B7C
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NszXIBC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84AA4C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703871496;
	bh=tZPN4tQRXHtfkn8Ygs2HSefyXU2tKNzPf2YNC3Igi7w=;
	h=To:Subject:From:Date:From;
	b=NszXIBC8TeRyoGIRurL1bDzy7licGGqWr4oeAvk34lYQBUWMp1bwblvBzOq5vsbxF
	 L9sG5tF9KXQcaq4hRbJtb06H4bt1IwZXiG78c/30mju16gRA0eK7f/6z8ecLNJqafF
	 3xVCEM1TWTpbNlNE6Da7O35EKk/WMw0XPTKvdhyX2I0/FIWdzaGXR2UzulxzoMJQVe
	 Q51b6Fg34eD7rFRXTjLHU137VenPYHZz9no2FSogQ5Yw9SoHBZ/o+IqRf1PNyUk4Y8
	 76gVc2FgMNycHTnE6qdSJkRwDjk2AWnaa/6DE7uEaF838WuNJ4jXa6h5zm7yWyh1UC
	 auZoLR0AziKCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6604EC47074
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170387149639.18788.14153654954474270540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720dcdc3a99b5352f04007b26631289424cc22b37443e74cb6da9ad30d121522
Date: Fri, 29 Dec 2023 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703871496

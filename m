Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF3A33ED
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB7FC433D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668777054;
	bh=qpcIFdUjLhirmdUWhu6WsqH83Wx4MlzoiH2As9lMn24=;
	h=To:Subject:From:Date:From;
	b=ORqwpHSGwxAvy3uZfi9stl1WR6nGKzGNSea792q7g5kZ/vKrBWTXodxlGTUagItzk
	 d9JAT4WiNO+DYGXwmfF79hOw5E/RndIHCz9NOesncY3+9UkKo6kT49c8HdHILOSwdF
	 LX/osZqJ1WP3P3HLHzOJg+WKPScDqTJt/gmk65osKetGCf40EDGYQZh/B5C+TEqMVr
	 BtD7tZaup3OfnRxOEVPMtl3fpA9kTWXMOdrRIp8+KipfwRdh/ZtzN0GJwoe1Geua6g
	 K+spit8umjeklfBipA2/ytxkQoHY65ocIlH5YstQ6hJlOhQE+76b6pCNJil9Mvq7QV
	 dmIRCsrI09kIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A794C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166877705435.5399.17235880761055165142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2833d0ef7150be6dead1529b21c484ffbf89e813b636d2d4e905077791df2d2
Date: Fri, 18 Nov 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668777054

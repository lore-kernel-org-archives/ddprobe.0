Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ED614F83
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sn7wsCFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A52C433C7
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698134296;
	bh=+uPoaUI9nKOi3CuoCXlQDX3Ky1ZN0bYiQUFfCkLQxBo=;
	h=To:Subject:From:Date:From;
	b=Sn7wsCFoCH7z1i4rGeST5k2/GOhr3R3SnPt2H+7AIadtIykbNwy77QIhS8+eNreSd
	 WncGG9rYZ3PhNveqXnkkpa5znO0WQI/tKrW5zLlLm1ismzkNtn8vnwjlqSBkd6S6OP
	 ykgm2kGf12gEi/ZwDZck8fdjdQEye57RyuDd7hLEkzRwL6XPSx0UtUdtM6GhoKpMsC
	 R2+w5Jv/1goLgNUHLEBMzktijrlHmeOJP45+NWPxt9H3xLtUbevVt/lNsVErnItEVz
	 Xfp/cQbka7uIOd06CRE+rIdAbKW1RhaqcGDjFoTiAfhR3Dgiy9Qf62rG4K42SCFDk6
	 L1tVuUnGeVqhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600A4C00A8F
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169813429638.8677.9649187215369154525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46cc11a15c4b7d5ed46baeb7cdac46acff38152c92ca67a081cea2a7b27c9c5e
Date: Tue, 24 Oct 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698134296

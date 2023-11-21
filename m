Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD273B2A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6UosRYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB95C433CA
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700558896;
	bh=/k1Yd8pVjrogG75DSGZIs+dwepUfXnZIX2274ARNUV8=;
	h=To:Subject:From:Date:From;
	b=u6UosRYF782xBYH+SylmsZjz+Xeb/SdqMrqvMtojBw0m1VrEwrRgjO92Hxs6lryTR
	 ag/is3WYNINDmH13O224aa8T5afyoShqre6lyRBdI1nB+/brguLDy7/MJS5R2F62sP
	 w0sgclT37I9C1/fPhcfwDFGAqd3GXokXMF3VOFr8/cCqWLM1vojC+zHLmiwzBQHxsE
	 ylxDzBkvKKgdNI0lPPb1pl5PZJWPnqKjpbH9FwDhyROjD3jAcFe8TJGXwpEjvnEKIu
	 5MgwKtZEO1ac94p0q+ps+rGh/IBUwPdoK5GasD8VacQM2DpwcCn6fFwOITP2LdoEI2
	 JSwdUfKIHzxJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6089DC5ACB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170055889638.8881.8586334912061110479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58c8cd4dadb1074389210ba5d1eb6f6f152159b34e9ea786d89992eb07457031
Date: Tue, 21 Nov 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700558896

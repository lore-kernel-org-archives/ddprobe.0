Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85F22F28
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 11:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CBA5C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 11:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661428252;
	bh=xO/JPeQt/TMXplNThTIwhiUykgGY7YUK8wIQphBOI9Q=;
	h=To:Subject:From:Date:From;
	b=i83PUXhnNAuCS5NZ4MYi9HZKXFS9l6rviQ3lx1XOr5elCStEVGUBrxJNg0aNhZy93
	 xapsSh5mR0SRsXddMStuw5WDpGusvAcvM7GSuyRO7mQyTJR6moU0CYo1g3z2Jm2jCf
	 6IleiXlGKFPTLY2BM+FAsv5F0pYBr0Y0ysx22EcOzuQ3yyvXA9nszTH3tbvzesTqHH
	 g/TvzFTrsCBwLucaXbAJVCt0A10cuhfaXsS+S1CeoGS3dzgPmCYZSib6VJNwCQNjMf
	 mOKezr6/00pQ+FaspmfPoOk6QR98rc/e0Lm0Kc9bKK+GcN9db3CaG3yfA54Do/unm+
	 mpYjJtzRhK/7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56985C3F6B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 11:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166142825234.19903.7768585500912327131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7590d5a3c54beb80c4742aa51c2fdb961615425fddaf337261d4ccbaeebf4af
Date: Thu, 25 Aug 2022 11:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661428252

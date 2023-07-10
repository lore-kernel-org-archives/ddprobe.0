Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66AF5C2EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 11:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BA0C433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 11:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688987828;
	bh=kIM1p8MhN+cYA+qXQ7vS4uAcuDm7p8r0ihN/R160cac=;
	h=To:Subject:From:Date:From;
	b=WkLOyuQZsqlvxQomXYrupkpJf8CShkCjfe5RmBfAIyd8SFtTuEfx6BbH5lnVapuZp
	 +E1AgnTYXqnXq1P6+OZ4mzdSui3Q+WRrkW8DcMnTi7uJzaBOBF5Lk3++or8F8I3H1K
	 aehY0uyvWPi1KMr1uIcb9DIBDSjlwydwtqhrXb1wwxcsVd7qVPCCoqsJIUD2aFqH1q
	 96Z5dFB5XyurxStc43tt8lVy+bOCd4r0Ohx97EGOb9pIb7gb03JggkS/3+ysWKOqmg
	 M3CgoYegBc7PXfZJYLsdj2qg2Yi99wAFVcyXCcDy9xjRG2xzLKTVvUPDRs2NoZ041m
	 6dwVUlTmdTEjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6075EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 11:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168898782873.27090.2222418146899044416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f33b70c7e18fc34cbafe47c665c91ad474d5c0f5b24a90f240d79b4a7cb8e063
Date: Mon, 10 Jul 2023 11:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688987828

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B97F1C688
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 17:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1zYb36f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E78C433C8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704302296;
	bh=0iGyZ7Ij7vrqxKhXHco3D+aHnJ3bB9dhq+CoC0j9lQk=;
	h=To:Subject:From:Date:From;
	b=T1zYb36fFcPGYCcnUDFza8BA/lguxIvwgykPyogS0DASb51asjz3R/XAnCMdriAKL
	 0tdbOONe1tleN4MPXngb6S66F+MZLnSR3Z6uAcP7QlK7yOdhxS8jrpQh3Ezfs/0RSd
	 HNvuNN5Qdy4usOojOoAVDaRsLgLNBoQ6AtEOF0Fi/INyKFacx8CBzG1pqwbP30Ekd1
	 sZAhJFk+SPTU1M1LPGumCLRW8Df0exo0TinaBseJbLiHlA624o1btIW6xTh1NLP261
	 nTs64gQEfFjwM4OrkptT9fYckOUWq0wxJz4ItaTQQZNjxMXs//ePnLN6gTt2z9Ymcd
	 G4PGVB564OcOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD363C3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170430229667.5111.9326282510019110794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06edb995d4cda9a6a4f583d9cc27275ec30ab099555422f3f1f4787f818b3c4
Date: Wed, 03 Jan 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704302296

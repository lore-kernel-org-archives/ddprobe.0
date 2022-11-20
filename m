Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFBBE64A
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8295FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668924054;
	bh=CKUkq6i50CWlR8drf78zCooG0xS8xuy02R2QNYstg8A=;
	h=To:Subject:From:Date:From;
	b=hy1ApBSnAXSJWkZ4wkvaf6zupuAsC4GIS4204WJi+T4Dt+6TV6jeM3mjcYr4kKcKn
	 uk8bmgloCiA0WCBpkiXbyA99bSHUwFOVK9mXonGVaFSeKFUAqMeAgwk/6tddegj8EG
	 Vg3gTXO5WtWoadP8h2SF6WfIkVKQplo/43YF0jphzt3OqM/oWDVoYvOVPUApiDxsGe
	 7bOarllARFwuVHdyhexKuOaVNIFEGwCvRNPzou7emRrYwEsv4t5ldR4FqtpvNo2kbt
	 fQILgFDFhupB3JMs0ZeGa0U0ocG6QiUeH8dG9FYcf1TmCPwSfZpdhnAO/trWN1lTu+
	 IJGNmzytH3bUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60681C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166892405436.17495.15747705173566539977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e4417042c9eeb69065ac173954fcfe757e88a0a432459c33c8f1dfb4353b44
Date: Sun, 20 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668924054

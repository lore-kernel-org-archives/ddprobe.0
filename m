Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3689B7FC
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 07:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA289C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 07:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680681425;
	bh=QAmOezHTYMRIKeMLN+1jBGb9lqf0UWQ1+YvGdK92vDI=;
	h=To:Subject:From:Date:From;
	b=a2yKf8jwGhtz3CgJ3TG2GulQtoxtQcSRmwgIMhjUiCv9b87ou5wtihmySVsF3kbEV
	 ecrP6r1rLXZRHnXXAUtGjXEZQcElS5dqC9+yC1SQ6gz/ytTk8ey6F5C7c/hz9N+yxi
	 QEDDCESNLWiroI7FY28QW33hNxxr8NH7gDprErNGlVCcEsgwB2ArmPx2Pj4NPCNpkA
	 4+F0Dwxz3EA7yAr8MYfgppqHgSGfTyyDaHUF4QuK52Pg3hT/cq6sdsMMcy5HQGuHGV
	 EvvPAjWy77C2dnCxolUklQu7bsj7ScGBFrI82NIA87aDWi0c3MhuKcfGE41JdxIKZl
	 K/oAAwbkWOslw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3593C7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 07:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168068142579.3804.4101505031446542075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df33139bb1367e603d2e3c0ee555a2438c4de0f93073fff6d5cef58d1df1b9ee
Date: Wed, 05 Apr 2023 07:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680681425

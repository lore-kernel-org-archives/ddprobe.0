Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCAA2184
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 02:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C498C433D7
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 02:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661652052;
	bh=WPNYIggf+3CnDOXLTGtgpRvK1TQbg4fQdh5f+TzbK+s=;
	h=To:Subject:From:Date:From;
	b=Y654Da5WW2D/KSP+2qYnjBqOVpX48lyV0n/JOAj6Ya2rDAB1ukSnOC8jrJcuQWSc0
	 aZ5idFSuaTsGSbJhr7xoEQHcgVHnmITbegLZBGFkRJrmqiIMCrEg82Ums8WpPLmC80
	 Pp4DPqpvX0nlty+qfMLllzr9w4hFYgr7huvOLxgbcssCeDoDB9K7bHXmBXL9d7LLPF
	 4YHZv6ZGMovriePR1IjudFP8pXX796oFqfR99+bidHirGEas56dpmKxaHrdM0ZQI77
	 vDqzXDnSX3KUl4H5Z62D+TAtLH2GK/l7G4IKNcn8qvkkfwc8QoWXXVeeSAdVKdl/Tr
	 w7vIk1o0XCQoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DBFC0502A
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 02:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166165205236.25439.16745294637879108624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f971776f93bb31bb9bc2a93777fe24eb1d6f8be7998e03a7961ec425e485e336
Date: Sun, 28 Aug 2022 02:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661652052

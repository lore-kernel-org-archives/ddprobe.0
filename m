Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B89B3D86
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 15:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2DEEC433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 15:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682695506;
	bh=m5TblxvsDNgBTcz7Fj9UlJsa9A+Nv6XCK+QVwTy809s=;
	h=To:Subject:From:Date:From;
	b=cPyh+ynRUHui+EYGidFd4XcGMMmgJev7yWoPKMr8CqwO3zOYLPpd8Eu8oavez9ynD
	 SnFV7c2vr/qOTr6sCcdBcWT0vKnnEtaGJHutyDjKIc6KNBxeir8G+qqehp19g4ejSk
	 TclHAl3vIv4sG6rLxVHigiRPP3O3x0nXBQ39XonbNO7etJbqXOTQZLqW4a8BBcEqUv
	 UWkea4pG4QYWabdaT5r3HgH67+V3R2467i78Gc6cJYYwj8bpcAImjxz3y3rLAFKpWQ
	 lcCJDlzpLdnti+zhoy1qiXAGvm7zOEmGzvlugXBJ5+hl6PRXfV1buxrkr44wEkZtpS
	 +0Dy/d0mb8QFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D33AFC77B61
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 15:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168269550585.6374.11606626476979195727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c33a066117c0e089f9b1ad39557f92b0c0d5043be445f9c6713e0c46a5db75
Date: Fri, 28 Apr 2023 15:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682695505

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45888156C6
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 11:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E259FC433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 11:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683287825;
	bh=lB9d32BVw01FyoOfLPUAxdX9JoQuq/P7uW5cV9EG+os=;
	h=To:Subject:From:Date:From;
	b=DMl7+w1cc1WXREyrxJSdkCNiPqDCjD7aQmLXwsyZYuqBmqAB8mH/R0Fz7fvBmSLN6
	 hD6zPBiBL58pjAD+O+zSQ8WVWeaXuYPkSlCUMAxDf1p+rywHSkAuRJV/wd5LH8b4S1
	 MZrQCgJidErIH9XESI+xGNGUARYYIpAiQGWQWf/t7YdERFsQtUwRbgRVF4eVyYtkaP
	 BAtOZ+UcqO62LRe5jVho4ORRibzahcpmGRjMI34Ju3E8DFFfeYtEfdJcwJYArpCWkE
	 c14rZELJZF9GEU/ZK8ep6ho+LzIF5AVDXy5WPUvGAOy3jzQtmOtX0s/hGz5hsVClJg
	 lfIuNd8+cAX4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB9DC7EE22
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 11:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168328782577.9584.11361609422171602179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0c527a95c692b839087be1a4e9fb7c11f93ad39e8c855f15da153a0d1ec43b
Date: Fri, 05 May 2023 11:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683287825

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AB0EBC
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 05:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B08C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 05:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694754308;
	bh=0PtkxoHPVGqHNSWbWjEkLrETswnCd9A9CqqjteW37ag=;
	h=To:Subject:From:Date:From;
	b=iowgzzcMhCnzphlEUerV8cieQJ2YfUL1VvHzZMGpcW4o5dyRieUeR0ro2JNnl1pae
	 KZLsVSTnknajLLoQoR4jF7g5ew55OYPjLtVzAEQc57j4usnG/NWYToT2E+pYSSYwbH
	 qggYEnzNDjPn2GR86384H4X1MCcfurA957OOZ7m9XSTIrOy2s7MfRrCVk6sfzmw5pe
	 dMgk3EYr5qtMhBX+++sgk7RCE02umLyt4rtLX5Cyzt8PF9O8+mzHg8uJdmgsLSFs3R
	 9MraG6yyHh9xEWMDucuXaPAdg2lk8IAIaCZVRkn5c7LTKaQP1Uv/3HJ3Ns27WQlPPA
	 yjbynDO81ZY7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D9BEE021A
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 05:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169475430866.31611.8194540348299240531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9384f6585e8471319b15d3b70c95ce66532c65bacfe4184996730e9d5b3452d
Date: Fri, 15 Sep 2023 05:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694754308

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25FA63A6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C08C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669816254;
	bh=vlqEXL1M6xoubQ0OKx0mk5WChrWTNqaSOe61oJe7mqs=;
	h=To:Subject:From:Date:From;
	b=BV3TssDB+pqSsJfIDdMgFxKOA4aK+bHPxc+wH7DyPENfPD/ggfqPn89/ZvLWqjQ+f
	 pTTENfTx6AspLtl1cY8apamhafORysMjlTOGN9dMAf2O0RqlUm1J4HPveNg92EE2bM
	 wd9LJ/uEqnkwYsOkhVg7u/zYMH/XwPYR5vlppeBHNkR1ADF5FAxjT1N5iNI8G1vRWy
	 AqSpK590YItfW6h50YwD+RDEaxFRfq0UXMZ1CvYaqiSKbU5ZkYIFkFTmrfyfHMVC1g
	 RURdJv2/QhN1bhKKgHcQzvtRR3rDNtVoUP4woW2aj6R06U5Qnz+plfCqc0H4jsom53
	 Q4wpO5HtXpjSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569A2C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166981625434.21020.1838408871485407805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68da54d28d8dd939e3ec2b0b7d2d4550b186be41eedf6efb710add037397b12
Date: Wed, 30 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669816254

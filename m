Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FF133EC
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 23:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D493BC433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 23:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674690785;
	bh=8tvSxvpLSh4hQA/iiLzO9Ag11JDjAp8O/xjQ87lspLA=;
	h=To:Subject:From:Date:From;
	b=cZedE62afcCnGONfsuTzXT33N/zfW2+7K+IbXHpL7ELemQjPdDUtUAm2Z6Zf4Jida
	 zigipM8Tu6KvEA+qK+fDsIaTq87UOE9rOBjQlz4s9a6LEzN8DCutVH9oh51K1gpZC4
	 FoPzCdgPV7cxBH+mcwKGu71uQedIRijpktrIQYZmLyP2Fe9+IKlUM1Qwg8SRIBpOGI
	 9M9FYTtM+dKvSlP+x7BSBCu1OWQh1UW9ULb8AmvK1lfw3Ok4NQwvLEjAPhHvGaUJzj
	 sppI1aHLQkQbMC7RnkcyxXT+hk7LjRLjgb7ZT5hUugN79bELNPyjEc921I+/aUXtzm
	 +gP++SDcHMKoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9937C27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 23:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167469078575.6194.8894873756911490782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fefde72b6e6575d82847e8af05c0997e52269b1db60294993644d065018d86b
Date: Wed, 25 Jan 2023 23:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674690785

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA5820E0
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 04:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE063C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 04:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695183908;
	bh=h/jSbPVnGoD8cnrJzYPnY7K+5XZtgUW909vXz35nM9Q=;
	h=To:Subject:From:Date:From;
	b=jQy9H94b6W21BxzbIAgkNNQftCI5FkiBrN6pi0qhWsUv7McZgOHrjcKYN3sjU1nG4
	 vW8j1B5G6QgNdd8yvDUMrLsGuphgMlDZWM9uaDcD9jhkth92apXOk/NkazyjgrZkYT
	 o1NO5A4OU5gCQ7+4xV+ylLAhdHfqLlqiseT3Pcow2WOsBNSNKjpx4ljzGY/tozVVgU
	 6EUDTebxpWCQSQ+cMJVla7Ippy2cLonZhoWgJ69ExhPeGJxHUsyIFWOtGCVotlzutY
	 7IRmPBjjRLXa7tHcOYhpG8OY69NMivu/9iRbUC9gdTgwe6JLrPaFQj5zSuMjIMq9Fh
	 6+WPdXDSNEVaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD12CE79AC
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 04:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169518390868.7646.11233905373191063501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0b56f36a1a132f4e8c42904a285b827da748d491fa89922cc9ba0c0f944dab
Date: Wed, 20 Sep 2023 04:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695183908

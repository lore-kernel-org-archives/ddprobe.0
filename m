Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A1833DA
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EBEBC433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663077053;
	bh=7wrvLpvHOsr53NjRCvEfVlEHe9ftSbjSanNWlB8BDWE=;
	h=To:Subject:From:Date:From;
	b=pkrzWFYf5iLFBSUWacJNRsITjtNqF4HhEEbZRIxSYvJwMWjq1XKa2D5TYXDZG/lfG
	 29GsrokUWD3hHRUCC+ztX9wN3kxJWOPy3fzjY6uKEzIdPmy6d04h7IO9K5qJs6D28N
	 TnA77Z567b1GbSA5JMMUmRVUQFvB7YL2ax+NMigx+azgd0lveTsa2wSp6VyDFs36Dg
	 wS4I3YZTQTJNMtOLWqnLPqwlgkFek0Rzxrp6zPm//SndSZfurv5A+wuVSvqY1AUvc6
	 W40cdO8zRv14XQToV6CoI/kUokiu70WirO7GxAC3wJh8To67sacvKCTXYP5iq83Wyf
	 r2vzs2aBzAV2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF68C6FA89
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166307705338.31452.1962337110732031676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c944946523710196c8f7e4917aebf5af2024a346647a459fe9a86d6fd3cfaae6
Date: Tue, 13 Sep 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663077053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B61B7F9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 12:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25D8C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 12:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687608188;
	bh=bMMST/SRyk92+ZK9ywl3Ml45Bx6BS6/Vu7C/UbrJwYY=;
	h=To:Subject:From:Date:From;
	b=eLzPnb4AhyljT6Hj9eEx5AjlGxXjLh+v+T+ppSPVFeeEUGtJlN4pvM4d93+rK7Zv4
	 bw263XvYMobPj2tMbHHiLNBkTGXhyWfwwaWZmPjzeK72PDYUgK/c/NmCsY01hG7zGF
	 bsX2J6hRLSsNWQYX/5UKFuYwsbSEpbme3KoZ3WirOnPIB4DE+EmXpDmcDQpzptLMCe
	 0TzYd1njVtWHBfw+rtMirfYzbOi9D0ZhdxzD+tBN838CxT6X1KskZ5pF8IsmJquyGZ
	 oSBSg7L4ZyMZgjfi+XCMDP+9bE7deLwGyZBZ0NQ/aGM0iPfRE7uRLoCWAiRlJ4gKlz
	 l6zDZRuL8OBOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B505EEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 12:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168760818869.32231.4658295843560059411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a179ef5e80008d1cd532896b3443f8ad847436c16a812b65194df325e09244
Date: Sat, 24 Jun 2023 12:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687608188

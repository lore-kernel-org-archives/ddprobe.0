Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BD5C19A
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 02:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D586CC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 02:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693622048;
	bh=wvs1G85tkvqVlXryjJbdRu45EU1808gTG8impWcbP4Q=;
	h=To:Subject:From:Date:From;
	b=NQgLYjZIl05Mi1BNJ5FE8qW7hprbVehvRtZdZ51TguMugPTsC3we1urYDscUsOBWc
	 dgt45Gp0y7B/7v3HthVRgOw59L0mI25jxt+3QwY+RMlho6/odz2iVoht+GxpzgfUS8
	 3L5R+Y3M8qJ/30D1XJyxNtIq9NVnp6hk7Nb41mPMq1F7+6h1B2tpBHZdYZ4PzVcfXr
	 a7+4GtAdQNAK1jW9fIVE2WG4nLu2N9jMJnsXFGZuBH4LG0zV46Dvzt4VhkGYnrtkQd
	 BGzf8jX6VBq95XBqqZkUAZm/qPCn8ZIqzukdvN4EdDubKpNVbAv8I1EWhiB+O6KkBh
	 WrkOftadm6a4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1974CA0FF6
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 02:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169362204866.31562.5479801207516253720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c97bfc9c5d4910e4cb3a2d99aec1723da04e6018f4651d7575c391ef19fc360
Date: Sat, 02 Sep 2023 02:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693622048

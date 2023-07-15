Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA3D7EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 02:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C9BC433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 02:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689387068;
	bh=gP63UeA3DQe3/3XpldQ6KugAOTyIu4eJH1xyGUQpElk=;
	h=To:Subject:From:Date:From;
	b=BunN8ZpbcZHNVYfnwqLWb631B6B0IsY3WLQ848BXbbSIpSiYE+cq4iFPdoU5MDj8u
	 fv1HX3tNbz2Ysqmyv1DxyHCvEvLH0ZVXk7iHc7+X2jbYRANkoN7baVq3mxzgvBb9gq
	 p2FP4a4Gthx8ZD3qFz2aJN46lwL8LcBRWdbEZKDV+ntTXOGK8CihSZmpXmrBx15GzG
	 foAKg4BrKagtJZbm3+PbbTis78wURMdXsO+R/htBjBLKidAx5rnLpiGV1Nd9tdySCd
	 gThyWOhzTcycwosi+H74qbdpT8Wb+rjG581aKBGrYrumkPg6LJftyKTnqI+An7ljLs
	 4OLAnpGc2K49Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1DBEB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 02:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168938706868.13102.9785707345758962014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc279f19ba699007ee4f5e86a87f69233df1f89f24502388f9202eee0dd4610
Date: Sat, 15 Jul 2023 02:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689387068

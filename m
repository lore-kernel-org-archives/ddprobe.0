Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95CA7B
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70965C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664367053;
	bh=C3Qq0/lSYdos9GrJ2NzAoZElPg1JFzAEHdIzjI9wY7s=;
	h=To:Subject:From:Date:From;
	b=MiTmXgQ9bf9sI9+yTZhiSTwBwPZ43K6qku18ZhUhpTtmsx6z5CEc4eBT9eD+nOFOM
	 2FqR/54B/0/1nRPdvj2AqTpmW1BXh46OytFMSBoBcFiqJMdZeowVHfEPsdgco7kM9C
	 kGY2dZLNJI+QJ/z97SuojKnqzNywAU8TkGpZL4jz+MGnHbmDa437IgPa4aG0xL2bdW
	 pM7LbqyTFAuxK+jP+y8wjL2BUKjE8Xi+gx33ymurxt3icGABGP4swpYEX9Xk1gFaVF
	 rcY8g8f/jpfs7cnvCEZYp1ZZjbMNMZ3zf8z3C7ePbQjRg1PatktDlNOgfqFCnuK0K3
	 rqYwPVM1wamwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534F5C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166436705333.2051.4608277430437454816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb384e64cf95fcf2bcadd7b0ecde151911825535df3189e9f9fd955f621e7a0
Date: Wed, 28 Sep 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664367053

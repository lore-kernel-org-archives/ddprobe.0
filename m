Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C258715AC
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 732D2C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663916453;
	bh=TWUl7mdZVOEmQCqc1VlbvYsyfOfX2HcQ7ac5II3p+7Y=;
	h=To:Subject:From:Date:From;
	b=SPkG27f/5t9O9yxiq+k0/e4M+pSDUbEZKqf3MooLFso1+Smimq/BUt1tsYrOvc5Es
	 kwikAXKo4Mcb2TqbkXwL1Hc5ZmIWyd5YEaVy+nQl6uAAJazVZpEEqw1n4Pfwv5bHoU
	 9a0kkfqH8i7yoXxgJ9DTA1FHfTWWxqKMN0JARsNRs2syp1gbuRmQ//sBY6hm5dzIMd
	 QPddy+yjCkBDs5bSJwkhgORlTd9NxHgH92HWq1cDHEja3+c1zVCzL1jSgFDPBX0zLs
	 fjBm5bul46qx/AeZhG9PRHy9T6y8tOzS1ihz16OgXhvP6x2ZZ5ZjAtynSEcjEYbMBf
	 DGTljbhpR6Y4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F35C6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166391645335.29736.3397947040065271865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2950dd3fd53ad2433aaba76944d3a1f3c559f59e34526168008035f5d56a3ff
Date: Fri, 23 Sep 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663916453

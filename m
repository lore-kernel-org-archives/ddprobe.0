Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6B05661
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 14:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDFFBC433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 14:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687702389;
	bh=L9qeivg2mvz20Jky7QYbefTy7z7JyvsHdjxZxOn7JyM=;
	h=To:Subject:From:Date:From;
	b=lGBxkIChHree5MjrZ1VBa3YlDjHsJvhUZc5aFqcRk4DKXWjG326qankDVKnGk5+m6
	 P9WACQlOjzeekL+Bivrt5HMFRmgsmZRswa7z6lalusQ2v84Ea2J6sFpXv9QynqoWC9
	 3DpA+tDlzWktGmLju+zKKlBzSjSjjwzvboZ4M8pDEZiRkGWSngwMrFSZrAENpKvtv5
	 2Kt7BJ6j6kuEefI8D2P+gzShtLxhQf2HmmbOtj/hmJAEFbPCjSmUwoM2yO2d1/Kvbx
	 3Sqped9hpfHld8HjLYPFD57EpGNjmmSHNo4GI+2L3PKihoQLAaW1hfY2fy1mdTco6H
	 WbJTtsTUrodbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD1EEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 14:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168770238881.13873.1125186458853455411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8604d3d1ea42c8f4dd424acd4c5fc866b81e800aa8b49692a2e274bd92367728
Date: Sun, 25 Jun 2023 14:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687702388

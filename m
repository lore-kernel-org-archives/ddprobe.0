Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8976FBB
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 737F3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668296454;
	bh=iCY/5jFKswoCFw/ItrX5KZakSB7VtNaMxhz69B7oIyg=;
	h=To:Subject:From:Date:From;
	b=cUvh6tlXqa/0NpgkeEXRbyfAOyAUOPKrChw53iX4BMkOQiJVflB8ip0+lrllvl8v/
	 +R1/wS/JjoO+aUwT6SpO8hen0Yrlrjs5CdMFL0xEE7vpIuLqGOrd1LzQDp4NnqPxGG
	 RoescJb0+PD86rwJyN8vSxqicMXOAItdYNdGLqnC7B7Jo+xFXpIolOaU0CQsze5/3n
	 XRDRcz0EW51SYTUyfLBQ7yFYLkG0ed0aBeVO0sfyCTrp/DVexXaPqAgfhCPE5NC+7Q
	 vJa0wBFppQ/luUUP9nKzumDrlskSe6aCC/Q8HAw8Q5dMtch6EnSWZLHO3upPVyZ0Hv
	 iMvHHsf4qcR9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57CE6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166829645433.24309.14375847192452388186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be996146e4b302a96ddb6127d9a6bc30f48a67ec313ae5067b8febee009466c
Date: Sat, 12 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668296454

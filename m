Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E287F
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B5E9C433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663148453;
	bh=VNOXQhyW0k0KWiF7dARBlxaSQRnlbGve6r/LO8XTbdc=;
	h=To:Subject:From:Date:From;
	b=MrmjM7sIVGUNabRVca62mZyBbovu9DLFR89dBTSCvrhI+LLbYLbI2uQ7S1cm6dTj2
	 N7n1O8RyZ/Ckc0j4lHys2/ZP4BjdnRw9egNNPBtMpndMilNbwT137b+Fv4gZtCRmPH
	 wNjDwHGiCbNhstbOevD1Jf15XZx78VCcthOh4X7l6eSmFrTMFsbj9xl7Y/PwCVipKJ
	 480uTCYXVW+D8o7/U62/n4LwnOa78bpvHItOxA1CN5FhtDV0z2rOAWBmVc+zJ3nMbM
	 c6B0Hg4dfSZ/rtv7tgIMTSLhLO2LQGy8Kl1sSfJVpRZOxJ5uf2cbMuxezg6B+xryec
	 Tml4WVSJgVdQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54144ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166314845333.32480.8414761926628905174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f3aef9563fe8d1d37c416e1b838dff296a31a3bf778209162a598a46ffe523
Date: Wed, 14 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663148453

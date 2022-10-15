Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8AA6373
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B95C433B5
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665808853;
	bh=yUvTaYp85vRCb+VAHkTAR9nhv0kdh6dicDH0Ux/1sU4=;
	h=To:Subject:From:Date:From;
	b=jOUJSE2DApHrIwERHlHOpZ6OQlYd5aiycyOk3RLAnaxWp0is/f7LwuCl1XiNiTSod
	 hJBlm+s+q3b23ixGVL0qB+hFSwmV+1KJ2dghqHhHDCSkbLw5o3kE6rsvMELz7geG55
	 VpGQtzCEzFkoq1IY0E3YRMF7npQULbd+9IUCfba3fTxqlsOrxm+YDEmymr5hW2k+ok
	 aDL8LAtu3MWgrys9PtXX+RCQZeM5jNZB/A+rFPvSNHLRZbIxu7KAZHL0oC5+cYwHep
	 aItADzlg45IBVeUCyo8X7CpMq78lDtjPD8ZDTowkQkJGiMPcEoFKx9+U4XnSgPZEYG
	 /SRP9vFzCfeYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B76FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166580885333.22927.195560712714136194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c8eeafbcef31d0113efbbb7142dc3456029453e67a9495627fc4a2cc654e99
Date: Sat, 15 Oct 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665808853

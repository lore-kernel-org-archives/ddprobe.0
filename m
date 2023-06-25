Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F0E91103
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 13:43:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EA44C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 13:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687700590;
	bh=9TgAjt8QNacoWGAVRl1/78S4Av1BUO7Yqp/IqtpByAc=;
	h=To:Subject:From:Date:From;
	b=ImahPPzk/h9/Uw+tOISdeNfu13ZeYTGSJwdcrRRZfAnFRsf/W3E3sJTa4+8FAE5yn
	 FLkk2/Bm85C4rTHbr1Px/C41wAbxPMtIOE8r/79481ySvzQxWaeZDDMutQtAnFhjB8
	 1EmRNxGDvwxfa6bYSZurtuvU/DF9MS2rtC2KNo9yU8dA7IqOnVuAa6GBdc1/OX0Xsf
	 TlbJh2dTzVsrvEs90JBeaGsUscnWhurZJ9g+8rEY1Cdy4T2mogITWWeT8ozf6xOEYw
	 +PTHMSaEd06vM1TNpCBIyxeBubZ9q4u9/YB8Qx7+bGJ808cSTp7Q9c/dCjicieM1O6
	 XYzqk31Nx6DqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4AF1EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 13:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168770058892.28087.3217893367512829217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f4fffb0f962a4cf24b9ec60980eddd542dd991a7c56ea96c35ba67d221bc2a
Date: Sun, 25 Jun 2023 13:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687700588

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45003FD4
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75473C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669579854;
	bh=AfNr1UKwn+BDKwLaW8IH8qsk8Ydbvyrn2vqPBoLV/f8=;
	h=To:Subject:From:Date:From;
	b=SylkzS56Pg2w6/ID4y3kf/E5h0zCFopI3YPVik8Tdd0GAWPr1//JE+2WwsQvf1uLi
	 04Y84106gjrzes/w33bjLbhd4jGh1Vs3ghHhYNmfHxn67pekszOHw0MGiQmZSHIZGH
	 s+6en7PVG+GcPvTk+wadzW1Y6jvIdckGIpBKGiVjGKDHdptdkuFd14nr5QwMRiKasE
	 OiI09L821bTN7WSdX3isf2SS50tDTsOl1iA/FKjgso/s8tzEkrz8O9ahVa4AinBj6f
	 yGLxfMK92jCHT8DTD+lqDNMHWlbe2RxNuvvd1YB2GEdVF2Bc6pYf+4k7tVNJuZtUsw
	 vSbWbs+aueRTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD31C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166957985434.31369.18044134214466596118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75bc06b81e76f0faa3040a633daee1de542e971a7cf6892ce91f7e274dfe3c5
Date: Sun, 27 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669579854

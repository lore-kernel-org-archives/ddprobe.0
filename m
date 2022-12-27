Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E249AA56
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98F6FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672133487;
	bh=5XGiljdGazIWQxr617/K/+QWoUKD5CGEtSqgYJ1lZvI=;
	h=To:Subject:From:Date:From;
	b=LKiyv+89XP7Ob0ReQKMCmZB8DbHwXUEXQuHfZuDRxuz2TyfWsFM4lGtd/Hekg0Ixz
	 p072RxX/7VWXvWusIxFakbweYG+fW+70WFXn0WzOjy2ar0zfsoTGF64TWbI4Hxmi50
	 fQ1QXWEAexAZ9SOJNaLo+Cn1I9CS+pGRt2GTx9S/Jvp32eHA17KoEC3kD9SjZcLCBR
	 ALiI6w8PYIRrWIleVEebnjKnhJB2Wm5Lxe33JnPGoOnsITSsxt1Oeahxf8d+VYCR+X
	 7+Yc3y2RN7m/OskdM+FaytGgiA2q6Dbt3t+m/2pgB9LfDBdLxuWCYJtPt56NFI9U89
	 NU6wBZGYfz9KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 702E9C10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167213348744.30615.7501961999420029706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85b926cc64dd0db2a9b99af254292b33baecf282c5490928a66130e3ded3f5cd
Date: Tue, 27 Dec 2022 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672133487

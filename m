Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76827B
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C2C9C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668322854;
	bh=EleDNs+YJFupa68dqiT785oAZXDo4G2paNa1SlYmWtU=;
	h=To:Subject:From:Date:From;
	b=CtMyCqeNdxrY2RCVqcxeW5rmE7yOh9sLyCjpBnSS45ouhiF9TmdQUOh3VMAqA+bcc
	 x2OT3ccZOzd7Y02a4QIes9BEBzsy3NsSsWBRRl/5LGQsw3SWWXR/krq09H13MPzlSr
	 WUNsF0YGWTwVslJfTUKmdDs8sBMfD3RBUQk4xMF2iX0XToItoJL0PiDwacGKI/3jfm
	 kDw1u7aYRI3x0xKieGqR/GGrj2njrMlN08iQdxNLVIzUPmQ1Tj1YG5jrXbrjsF+o3o
	 iu8JOb5ui8vWyRN66uvDgGylD9qywWMSc68QSCAET4asL1SEzJ9JXKLNygX4wLT1/C
	 zyoCZcoHyOfKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67C9BC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166832285440.12147.3632822838045000004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b528976a186b39ee52f5aa040f38fdeeeac71f8ec406680c8e1aec443ca6997
Date: Sun, 13 Nov 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668322854

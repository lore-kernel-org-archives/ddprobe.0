Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E46517E3
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 08:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7FFCC433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 08:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693729448;
	bh=9qYHtJ1L19sEvncwBa/6jE0NaXsb+Lb0Cr16CBi0+n8=;
	h=To:Subject:From:Date:From;
	b=OQXFQotJyiLVr8dDtpHCft9vB0Be9MvnN4b6M90fsfdMo2zLxkMmb/jhxaR4HICgR
	 al/b4Jcy8Fpvl3WpvUK1IpoFze0hgoAfT+jiyi3pac4hAc1SUjQ1NBnpt4YbUuauh3
	 XLJ5ioRDBgxv6Wiuu+6iMDHZmDCmwsuZkrnGByzaHCESvPbn9ntEqnRzs0a5QxHQ66
	 EewHGy57BSqLNJjGkTRfNCAicSosBIy4uTaaW1IyBt8eTQYnL5oaVrhRmPe/2iCCBs
	 41FDjrHLMjK/yQO0G5aHxvMPQTQDTUvUo8vswVFj/sYWMJbhOEmebPAUq995fR8297
	 V22LpkC5b+WPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EC2C83F2C
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 08:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169372944867.4324.16759635249881011113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea79b32f8041972f13ffdf798a673540a63932c545ec6e6a3b08d31a1259334
Date: Sun, 03 Sep 2023 08:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693729448

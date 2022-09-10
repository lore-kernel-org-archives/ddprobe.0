Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E2F1397
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 727EEC433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662821453;
	bh=o8zbxsKtOkej+X++Ur4l7T0oRpgLRXuz1uR0I4ztGYQ=;
	h=To:Subject:From:Date:From;
	b=iRa6NIi9QuN5YlV8pdkZnm6s0xasoa/ayJFTDbKYXdYv6FC8wHG0dLy07thX4fhFi
	 XzRLdDcZj2HgDq6HSAidScdEWtPZfBchVlE8ic0FYaTSkAmgZA2Rp5lL3rJ7/Is5EJ
	 g6NYq3xjR3g+21zjkqllpsp5Ae2Ongb51GLlCQ1oMKNR3qm76JdUsNsQmz7xoB6ihq
	 OZ1hjL5Yrd2lS4QHn2D8rwd0aSTkIvoc08Qdh0Rn+Mjhd+1SmYMCkTtUH4Q8/ZV4Hy
	 cC2q8W0ucxLgQIZiIDITC8t00auUzd74LV0SP4nkNy/zPEVk6KspUwlIWFtNaChYeW
	 saDwcnffwftkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544E7ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166282145332.29065.557108294578923736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a2e880fdc57965a6955184a3de69e3fa933c74261d022edb18a69824468c21
Date: Sat, 10 Sep 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662821453

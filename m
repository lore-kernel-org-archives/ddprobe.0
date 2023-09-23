Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7C2CA66
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 23:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC327C433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 23:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695512708;
	bh=8sFdr7u+HSctbChvrFUaWr+bHh/iLuyKw+UlIsdlGxU=;
	h=To:Subject:From:Date:From;
	b=h5Mtq7739xFGEN1jg8D1iP3nbICgPDc3i5Gm5JvJVXIQcCNceJZ2z6I0nkVZ3lzBd
	 Rd0VjnCUgyN5vA3zwBMbatO0py5g+lQ5cUT++i7mg5kJBDQOxdIhCrGwhMCBYblCh0
	 ifmk48TGyfc/BFVHrS9dqyaXAMnh8tfmxpgYA9iV30pV+hEH2TIDVCePDN/QFa3qhB
	 WCfNp4SeAcQlhg4l5erPrqAMUAkweD1ifBffe7M0gLigfruoZdbVp0aVomLFOFneZO
	 9hBuTJdijWPyhvo+bo1PVgvXCs9dERF9MQ/khs925NPL+g1SHOIHW8YUdDYryRz+8+
	 cIDS/po8C1myA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8D3CE7A88
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 23:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169551270869.7658.5925745357454894872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52168707d384b3712f0f3548abcc7fc59e99d9ca27658caa7b0932dae3cafe14
Date: Sat, 23 Sep 2023 23:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695512708

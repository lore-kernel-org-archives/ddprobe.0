Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474B57E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 08:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E55E4C433D2
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 08:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683015365;
	bh=TN9xDmKp7XpCpPD2L27S1U1tZW3kwOT/mNM3hGqoUcw=;
	h=To:Subject:From:Date:From;
	b=iLPRyMSOq9/t6YmovvZRuvnKW7Gxe+t/W7XXZmT/zXdNXexoVG3fjpdmMs6Cm1PrB
	 u+OchIHmSevDX7e7E8i8W8dW4WTSahOhF6pPFsmPmHFRueyIFFpeUYv4wlcY5q7VPl
	 nJJUOt6vwvFAZx4ENBx1ZkHQtSJRJn+FDOBzlyoyFYHYGQuidE9uG6/1Qybo88aKKr
	 +8RSgNVyNMLdcRuUKmkD5xq/sy/tLSVEMbkU/I/td5EGUCGsryiTg17ZzkvxqgrA/p
	 1hUo3+bJPF6oD/ut6UMWyuBTMXppzV8sWSQpwbymFJ5GJjiKutyC7GDd6xlrsPTGFe
	 NvyAxygaBML0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F38C77B7E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 08:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168301536579.17165.5760613930088721325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a9ff318631c0920561674feffa486eac43ccb73a353e3166cc6e18b130c9716
Date: Tue, 02 May 2023 08:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683015365

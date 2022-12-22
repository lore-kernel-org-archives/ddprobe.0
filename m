Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86F015A4
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A62DC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671683487;
	bh=1IloXzxsM3gyYr/Gmu95/9uRFJCCQzmjMVitWSujYB4=;
	h=To:Subject:From:Date:From;
	b=NxGyMPbkpGdEcPm8V4NStiQLfVccz2dGaraB75MK6HOZkJouCwnVdGJ/72MjONoSA
	 oChoZz1nXFBnDjH//67DQaIrwpHAPak9HmLLt5ZwPXAFeHFsm9Hzs2/9CrDtlrQrsM
	 AtXSRHD4414u7CY5oqr2mTEwNwt7ibgLiZh0vWm4KXRZvoN4LkE/HvBege8nPTZsMw
	 whWHwEOVdmq3jG/YgSxOVY5GbV645uIVU9S9Fixh0emjg54qmF3zNIiaboIKn27eSP
	 Ma4LaiOMh8SHXYQMrOusl/pDjuuDu8yfFDiVDkce1oeEOin5ceOJrODuILEh+n76Qh
	 qO2TFZaXUugmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DA37C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167168348744.28771.12427329102423665835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86bc65f28fb4ee07cb98d98c06c6e2c16f75f27f5ed0aeb295e4c3dd9c62a2d4
Date: Thu, 22 Dec 2022 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671683487

Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A8C258E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647040585;
	h=To:Subject:From:Message-Id:Date;
	bh=pPUdwVuUOVvtCqJKCR2Jxxp+41eUH3oDJls5E2OvlM0=;
	b=a51nsx76wAf0Vc2Iy8kqk+61VnRxLOWtAS4beomJ4Cuur2UbWu6d7IItwgicEe74
	6PyqYuuAmvKYDoC44mpCDMfkNZ6sck3EpL8LujS53nKrrkrbj6qCyPYMAWcterxH6/n
	XmK86/Gk5sc9qMRLR5/2+Qras95ynoEvDne7NzjI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647040585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pPUdwVuUOVvtCqJKCR2Jxxp+41eUH3oDJls5E2OvlM0=;
	b=YSQl1LYw3h4kAUZbWov8FqLsHPO4xvm05PaAr/1Btv+8FGDGI5SI93Eimt69Sbs3
	oi8jMq1mLqSNbkafY0y7+5TNfMmJghhgMCl8fDt5utRwf//PohXLihwCiheYZaECEyP
	cndY4Y5IOvil/EKd3mN18EtTrwFFhzWdsy7BvNds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b44dc33-97316bd3-46ab-44e2-ace7-512061888452-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61721c5531befd768a973238d96f7e79e86ec754f4d3fd88ec1ddca4a6d07ab4
Date: Fri, 11 Mar 2022 23:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647040584

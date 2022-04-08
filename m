Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33570362
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 08:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649405758;
	h=To:Subject:From:Message-Id:Date;
	bh=X2CovbXr0yNSiv86IqcBYpKYdVvXwPMHMCfRFrp5CxA=;
	b=Om8zGE/ek6V4PeYLC8BgZlPaeAOBdAcyNCrchepLCwErK1DEbW4atWZSDo45fdGg
	yyc6CC6Hy+BVlFwB6ju82IR/tV/9be1oNf1bUAeCo937dl2CSIBxzbxU7+Y+xkbzIOM
	ITsDtz8qSPnFIMFSiqJypBjoFusTf9a1m/oO1kWI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649405758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X2CovbXr0yNSiv86IqcBYpKYdVvXwPMHMCfRFrp5CxA=;
	b=DGmo0gIODjBpKDXc/KnsgSmH/zp04Io3i4rECcwG/0wC8rn97ecVhpUMQ9MKF/EP
	tzS1edFC+hGuRErQlcK8conk5XSv54Es1otV0TOTPHBgmfX8i4FxB+Myfy1dCwm1SSZ
	U7OFqEwGP03k4cW4aMqw8wKVTWyFPHmeX/tzeES8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180083e8b52-8206fcb1-4f5e-4dca-9cd0-54ea238f09d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2048b0b91a97a22d1bd4897c0548893387de8470e9b9c7bce2cc8de016461753
Date: Fri, 8 Apr 2022 08:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649405758

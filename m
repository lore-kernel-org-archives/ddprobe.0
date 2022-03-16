Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE906468F
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647391585;
	h=To:Subject:From:Message-Id:Date;
	bh=tNqDyDDowP46RVpkK5faSjcSakuCS6Y90bfPuMyc3LI=;
	b=VmNVIsye+ZVacbsQY4czwoNnniIVFcACjxJnSNwjbH7VyIvAyGmbZDQdrECxLE27
	2A6UGSDys5jIGHiiVab93Pl1nhJihxSRbnLEMyHObm3I12GwRU3aWUiU//VDdNFJO3f
	tT1Wl1DoDkrr/zqU9iQLqL/NTSmt8VLI/K1rTrRg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647391585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tNqDyDDowP46RVpkK5faSjcSakuCS6Y90bfPuMyc3LI=;
	b=g+Xm+kKzskIdv+qX2lVa9Hessk1L4Q/BuxmQMHzY4aQ4+HUfD9B3x3b9jWGyl0w/
	VXiNi+et5VkcPUSehLuhjvh5vbFSOAHz1Uj9tDKtYYuoV5g2V061RZX9+IoxqQwGmgK
	M9w/ecYiDaAqERWxg2Mwn25CNYr1yS24pTxVAfzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9030b1e5-98add80b-230b-45e3-b75a-037f855524f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3215b495ab107e234d99cf8971ce07fec26aedc1629c6691cd1350e62bc99b75
Date: Wed, 16 Mar 2022 00:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647391584

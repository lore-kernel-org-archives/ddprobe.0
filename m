Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13947A
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647583885;
	h=To:Subject:From:Message-Id:Date;
	bh=xPiAO2tSPVjqqx7I02/PfyBj5kF8shwLjciG2Kwz1sY=;
	b=m35Hu3CMPQRAWZy2VIZbuovGsMpvSp1mLvRFSTl/CHcI0bKl11nejx9M6atKiwV+
	kq5Thyywjqoi76lyYgijucB75QXh9vdQ7vxCMigQ30PFnW15y51Efk2DVRsSJRsxzJT
	RJEPhwSO5L4jQtds9Axnlx61zWzil+esvEsIAO+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647583885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xPiAO2tSPVjqqx7I02/PfyBj5kF8shwLjciG2Kwz1sY=;
	b=SpBmdGBgAvgma2cNMqtvSb8grXUbV3oIuSUYM4EcSbTn1voUgWuKtHUodVwZn+6n
	0oSefaM8kH3XnljrhaFBTT68Vic9+qtet5QqXM21SDKFw+uvOrkkx6BMCSuBQLWXJ0b
	AinYGWxXj5Z/LxO/kqkTTqzdgThjZTka7NHBqPdk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ba6f6fd-8b493103-8df7-41e2-8b2c-c16ca9fa5ef2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d13b7539257d894d203eec82fff44e0efa06f004a86f5d549423e457370082b
Date: Fri, 18 Mar 2022 06:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647583884

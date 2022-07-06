Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3589120FA
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 04:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657082812;
	h=To:Subject:From:Message-Id:Date;
	bh=tNC0qEwZaAMLkcYCSJNHPu30hZW1PJImuADpgbQHpSs=;
	b=afZBvq/SFkAdP5r5mZ7dqOhu8wOF4PbMWqr6Ey+AfyQMKYteQ6MB1SD1o93fESd2
	XLT08B4Cd6sWimzTb6iZYmcto2XIdHcChBGmZxMUClWSV44k1BeZQnF8NDfc5kbj0Ls
	EAXKKf4TH4iMJe7Y4JKiKC9+d/JFrt2lh4RI5yyE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657082812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tNC0qEwZaAMLkcYCSJNHPu30hZW1PJImuADpgbQHpSs=;
	b=WLyj2yPSMCvr+4BdY95BlQvpT+7rcFHqruQb3r29Z/4+5j5440jg2qaPdsj01IqN
	/Pez9rCUr9ERMHU9m/sIS0/0t6Uwu8qE7hXUnZXdmi6O7a/3CXnV6/s4PoQV52TXEls
	M02tmCVr6olTuRhPgHh+Le6m8HMObme7wO+YGJzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d1d517c3-341ab997-a401-4191-9104-838e209d5699-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4190b099dd582581c9ddb58449c787f68224fdc7d47b6c4514abc573c43d5181
Date: Wed, 6 Jul 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657082812

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6BA1FBB
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 00:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651365898;
	h=To:Subject:From:Message-Id:Date;
	bh=akPGz+7vmyANrr4W5QBguMk4cyLuvD3PQd+RqMlNMQk=;
	b=Us2h6D3ZVMBTEjfW67ePQrh27LV6Q/T6he8O6xIrphRwjAGSE0sadtetOkCMTWle
	iQmlz/dczdSdXWnjAG64XZb5MvgCU5FjQJXsY6VySZmB9JQD4J6q16UYCsNvMo598uL
	Zfi/xoisQkvRSnCtnNldiCkJAjS5R6j3PKA5u+X4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651365898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=akPGz+7vmyANrr4W5QBguMk4cyLuvD3PQd+RqMlNMQk=;
	b=Gz9U+qV5MEJ3QsgQcnWgMCEdUmeW2gh1yygfnZ0cSiod1PvumcoJtGwJziI+WXNn
	o2Z1jhma+A7xoB/bmszlC6jdWHLhMdNGXrxFJoHWt82BNDoB912GDKoLmRuSmVM2k94
	/2yS4NCNOTh3nP1KnAXuxRwzr0wZLLxkvGW9pNJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807d13e83e-e9341138-3dc8-4655-bfa4-0f4f76b02df6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e25d8ee0504eef1dde12e6f9ee7e889684f0d56ec2d89352aeed3e8a9ac04024
Date: Sun, 1 May 2022 00:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651365898

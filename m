Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65584437
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 06:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656830812;
	h=To:Subject:From:Message-Id:Date;
	bh=EhpPAFrmz/BQMOXgQdZse1S6Ycss0sPquOcIni4hPo4=;
	b=O4PcYIUOf0oII2maVTEJWYvonJK1WoFOm6AhjimuXiLR3sULHmjEcwpMmT0th7gB
	pCDUIbCIsq69ehBZEsdC/Ou+W8+qjswMQZ7It4CPV8hGT1mSc1cXbszmTy/eR1s326j
	VP/O1MQn/gB3CFtnsshOE4DMyxHab87hlbe167GQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656830812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EhpPAFrmz/BQMOXgQdZse1S6Ycss0sPquOcIni4hPo4=;
	b=QzQDJEYm340RkjvuZrLg12AQmzV/QK+872D+ibirPxV6Rp8rpCXcWoxhjWQhocvd
	zPar0PMBkSIJBlo2Kb+GJL0X5tE4fK5/WzxNSJlGEF6mj2pKz7F27cl5WYL4QzIwCY9
	m3OMZov7r0kTVWCRgCfBxK8pgcrWQ9rpHuQfXcEI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c2cfe06a-6f1ffe81-9a1e-4359-9db9-0dd53dfa2307-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eeabcb9f9a9d06b50184e0ea188686093773de0b73c7e8bdf69871bb6c26fa24
Date: Sun, 3 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656830812

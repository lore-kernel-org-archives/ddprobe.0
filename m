Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099FE36D
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 03:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653278339;
	h=To:Subject:From:Message-Id:Date;
	bh=hLhMUSd28CRP+Bf4hRSvP0uywZT3vcnqpbKQHW3YOJc=;
	b=Dvktlk/cx9+BFwkROfdZGIyzvNSBbbvyKt4BRi2iMj5KUeuwkxX9ED8stCJ1zvB0
	brdMpiXM1dys/LU/87cdHw0c2qJwrI5tpOaFW9NqCv0HULcrqgFw4YbiJRRyVSkecas
	wiY2C159v1iHa671FLpeLGTx9ZF19IXFVAV5T9lk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653278339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hLhMUSd28CRP+Bf4hRSvP0uywZT3vcnqpbKQHW3YOJc=;
	b=RMy44cq8Vh5J6Oe7uzkPt3Zo36IbZf2eT8MX2+kiAJAKYS/zOWPKl5nU6l0ThfoG
	3c9QIZj98PF3Ja6n/mXXsCyLP/yYSQ3z3e+kYzafX4gwq8UsrvCRqiV6ftZxqmdzI5p
	WW4gDNJ0hOQRqSTYF9gB2a0rfKd+UiUuI7/M80sY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ef1170b1-c9d7dbcf-ffc3-40cf-9192-9bc15f921676-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8a766afd02556a5e9c6b6fb5ef849c3bb83fc799a3b58bd13c98a156228bf2d
Date: Mon, 23 May 2022 03:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653278339

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508892F28
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660337452;
	h=To:Subject:From:Message-Id:Date;
	bh=1HTWPKSBcGUDy4U6B3Onq3ucukOVA9Z3vMrin+zlAQY=;
	b=Wd3mS8p2ITy7hVMkMPVInqIDVW/tOLfa1rEM7gOBAkGKdDQJ5/yjNO9uqjm4AUlt
	EJg0W3GmrvHsorx50ohS5xG8Tx2YI+epvePte364NrhKU2YSHhW9BrRWAYIg4PcOKxZ
	waP+pqM46qo31Fy65NzH85iLEpTHt0ZxsCsPdlu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660337452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1HTWPKSBcGUDy4U6B3Onq3ucukOVA9Z3vMrin+zlAQY=;
	b=ChTHAFfxEAcxlaG5t4lmGjSoC6tr1IWD40QY1n6VOxehESGBO4gbpbnmua+q9h5Z
	hvhbMpL8Fe4q6Cp8O0HVmQJeJANLzfowBODWSJaCL2DFZYwMTxZiTgf95AIyn1nUdza
	BGvdcb6Rmxcwftbs4JmGBXGHYNv5nJaacAtSsd0U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018293d2f60b-d72b1315-acf7-45e0-857c-5926ecf57a03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 041fbc7138ffd299b4609b6dbb8f18ab80d09c079a8af032fbdae4a44f9761ea
Date: Fri, 12 Aug 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660337452

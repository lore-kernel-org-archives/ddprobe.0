Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF131363
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 17:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654449059;
	h=To:Subject:From:Message-Id:Date;
	bh=r6ucV9QTVeMh5HcF4Lb7NICsu702+ee2sDuZbxFU5qY=;
	b=Cim5DQiqPBtrNQ6UkOi80YYKwakhWN8g52FgwGltys9YXGfYDb3c/hidqarQBk+A
	OZJCp9Gu9vYiN03vL7i6oDNCV/UDK/FQbwtoIlURYj52sLQMD7dBaArdMuine66H/+L
	CEC3O2J4AbHrVMX4Du7F2epOe8gaA8YPxI2TBHX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654449059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r6ucV9QTVeMh5HcF4Lb7NICsu702+ee2sDuZbxFU5qY=;
	b=Jn/GIwUa93OHIY5sm3S4NxtW1nOFaYOwN4OjotWVE8mLb2gwHIWNyh3/H43WjuyJ
	Wvwso9uv/e25aWyH2kTtJhlou4yG4uwiX8Ixt/Rmak9sJEOMgWljmfAoEsINV1LOudC
	jMasvc2TDL/ZTMnohyWtKLcI4zEgjw3SYU9kWdtY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018134d9362d-a0c1ef5f-22c1-41ac-8e02-2f355d45c981-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17bd74b68ac51ff426fdce6626b5869253643b0c41e50ddfc6be1d5df03bcdc5
Date: Sun, 5 Jun 2022 17:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654449059

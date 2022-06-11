Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D807B7C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 11:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654948199;
	h=To:Subject:From:Message-Id:Date;
	bh=2TlL5eCEPPrDDOuu/+sqGMX3hxtqrQaB3UIrM9iuLxM=;
	b=bZgvddF4R6zzdbkt9f1iL1BsBa7aPbbF+L6zg49iRVkjASNbTrq9cnRaS5sXF5vG
	o3gdRN6CdLb54FhjsZMSaFSHsdGMMwr1FEXZjA/tCLyBkDAtAQRMxtb0gQ6va+HID5F
	tUYIrJyXVXUYbyZ9kkbmUOvHsj3imKNluMOH6C8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654948199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2TlL5eCEPPrDDOuu/+sqGMX3hxtqrQaB3UIrM9iuLxM=;
	b=Vh40JdcWVWbcgpfWkwqGfT4D19V8fpyIneczV1USUKz9drWW8iy8PunsCZsi1yFo
	ht7I2Qxx8h7Yic0fQvLBt8Hjd6wpSxuX5mqN9Z/M3T9DMHjyhTxMK6wv1zjj3b+Ifv8
	xvL7m6PFnhkfS6JuhRRm6Ze7l7lVOdtmgWfq4ppc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018152997b3c-6bc589b7-e6b6-471b-88ef-606a0a04b962-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 041eee49700fcedc81e4de6e97deddea3988b268dc90632cc18a9e1820634f70
Date: Sat, 11 Jun 2022 11:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654948199

Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595EF1868
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 22:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648075558;
	h=To:Subject:From:Message-Id:Date;
	bh=lWA2eOOgmvjRpcLc/CRNDZUR2rnWL5VTl9lUNdtfXfs=;
	b=Zr1h9brYhIo5gjgwnn45ok8woZaUv57kiW0J756kH4IZMC8ggD0ecykoxgRSoPgm
	468xavV81apX4hAtsnoCHaimfloAuGn21gon4TSDKORTH1nXW6cl4Jy1uai32JD6xDq
	76uZcYBOZ5MTgAVttK/6Q1ZhovueKf34uAwVN7Kc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648075558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lWA2eOOgmvjRpcLc/CRNDZUR2rnWL5VTl9lUNdtfXfs=;
	b=E1bfilMxwqRfvpICX4DIDkpNTekb5UhX+zT4bxjO4/VKxV21mOQmQ0ejWCwVS7HY
	9Hmi6ZjPTUU6HcBdNlUnBME3J4J6FSjxR3aYDdxy3y0OvPB1XaX4oSUWjGVgnPNJQ3M
	ycTypRxA66otCRxJRvySx79EtZwvSv5jM+egjqJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb8f54d9f-bd553c93-15e3-4bb7-975b-f63e4fcd358a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cab6ac7b88c7a1e14474b0eaf8a9fd8b08b1e3c496dd1f7d6bdcd78121bdbec0
Date: Wed, 23 Mar 2022 22:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648075558

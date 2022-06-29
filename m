Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088267B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656491812;
	h=To:Subject:From:Message-Id:Date;
	bh=bb9Mh4j5Wry9adV8/1DxQ0TsuZfrLMAalkjDBHBQGpc=;
	b=QS2X9k68/1RSGZW77EecAG7rKE3UWL3Ak0KZ97muG3i2uItVAgAu1dRhcqocdLTC
	cE4L7tze6+Y0faE08WkXov3F4x2NBmNTkxug+iqpKNl/ikAZhE3q2dYKB5tH0d96frX
	wAlE/0lc3vzzk4Vszp2OGRUE6YkADxndGzYexzIk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656491812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bb9Mh4j5Wry9adV8/1DxQ0TsuZfrLMAalkjDBHBQGpc=;
	b=fxkI8v94aOWD0wxhKRdJ+TceFC5IPsz8xQ04KYRnDrz/DaTX/HRA114hhubCJsDJ
	FtFNRDapRjvtb7ADw2EXGtznvLCAg5F4OtpNUV2j3B9hGIOnk90mK54Ahadf2S9XBHo
	/6R8BT3oYuRLvLBFO4mAMGesv1daOGvfMyBRVHL0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae9b25ab-cbd78295-4cc7-4767-8143-01abae02e377-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 794af43c27bb63ae4f7a81fd90866e0bbd700a5ac49ad3a09293200d6c5139fd
Date: Wed, 29 Jun 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656491812

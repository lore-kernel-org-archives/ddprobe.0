Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B69E10EC
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 04:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653538199;
	h=To:Subject:From:Message-Id:Date;
	bh=uAm0lW3Mn7nscDf2O4wsfysSQN87llCjR9BMIhR4MQQ=;
	b=iR/FBi3444mkGkJYwhJjq6Sj+/LKopMjCkJPOSMv3aKcpMWKwulph3cpk/K7wr4q
	e73HBamoGRtv8Dr2Hbd5e5HKCXbe8/AQE+NTS7Oeqn0AgBbcTkUGXFUtX56N+hkqgdO
	teG1qSIjpacEi6BKYLWxfZCsDGHi+wCRguqYtYQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653538199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uAm0lW3Mn7nscDf2O4wsfysSQN87llCjR9BMIhR4MQQ=;
	b=Mpp5prNtfnwc0IIvV2O6tiNfuoaVtjojo69GQ/B3nQ2l354vPrKIWsSrxmXMt8hn
	VFoQu+vJGL7oewEd3glsZHMpELF51UzujU3KLIp9y/PirkucHZ37q1RX1FsjP42UUHo
	iM/ml/rnimySsm1k8kpHgVETHZqNFyMlH33WitNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fe8e9730-b3a500f7-a5ef-42a1-8b09-eecc99ff6386-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95df35cb3870889df87a06ddb1f261d528f31560967be438bf6d56e0e7c5545b
Date: Thu, 26 May 2022 04:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653538199

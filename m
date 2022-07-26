Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6FB620
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 06:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658816212;
	h=To:Subject:From:Message-Id:Date;
	bh=KsuJZwlQ6AtvgdQgGjculyGeXGOMVaeiy3K++QqI++A=;
	b=T0prG7Mq5Mhcbpfhu9ljAagLtSfMbF8zBJu4T4CLK1iFCPQ+FAK5nqGmEAuSmb9w
	PqerBMxGBToaxnvOOkBMZtxYf+RjuQR5fUPk9OaPpNl5i36Orf0SCrlmMc3Y0GcRz8D
	IxrRWne/7mKhsaMNYCbqJ5o5yhxSK6ftZ5l8QAdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658816212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KsuJZwlQ6AtvgdQgGjculyGeXGOMVaeiy3K++QqI++A=;
	b=fGX/a+J1DA/Ws7haEPjkWIWui3ys2kMK11sJllgghoTHfP0GYBGvLMiv9hkJEqpW
	gT46txNCToczy/Eu+RYGMgQx8bk+Yf3Y+dbTRg9OcQOphRzMYk2nkoEnJc1e3oM/76D
	sxwB4moK09QFS+psAzeFX387lkOFmc0XbQhkdGmE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823926ad22-29ff77ae-fd32-4504-a5c6-29d0bfbf942e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ca92a452b3342443fa21fd667f1545485e47447d24f24688e909fe23521ce74
Date: Tue, 26 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658816212

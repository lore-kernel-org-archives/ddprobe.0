Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AC43D65
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 22:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654642319;
	h=To:Subject:From:Message-Id:Date;
	bh=TyOdqxIWiKP+rT2kS3/6tSqEP87Ec6gE6ljIqOVrObw=;
	b=ldPrRsB5tBlT0Jm6kATOvum31Qc89ThBWhokpQFNL5FjiCI2HWvTVQODf7QJsmSA
	CB8BZGNfXbV2qMqu7+DRl4hCrjANVDiwYYNw/Td2XmOEN0oLgy2YHG4F9Wsa6MYJ4NR
	ZDb+oqfX5+STtyV76uDAIKenpjzp6aXrR0czAan8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654642319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TyOdqxIWiKP+rT2kS3/6tSqEP87Ec6gE6ljIqOVrObw=;
	b=aj5+Pco0ll82P5hB3PWMeO4ONoOZ/q5eVJlUThQadOekCg54bNS/xO3dGi8ZIrq+
	3a0HXxwy5SUiu1AbWM/c17cT551Zw8jZU1oM1sHTM5OJvmcVYzzmoORoes1DoWksXDa
	h+YhjPV4X7I6eUbo02bJ6bB73gQohDV9+r8vrAVg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181405e1f9e-290dbb68-bc64-4646-9694-f11d1327ac81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4af48de71014a4be121e622d8b136b4f2171fdf52a0ed71efb6b54c2b84222e0
Date: Tue, 7 Jun 2022 22:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654642319

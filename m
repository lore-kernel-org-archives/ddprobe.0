Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1452100
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 08:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656319612;
	h=To:Subject:From:Message-Id:Date;
	bh=TSLiy78/XVidRocA5BjugasermrO8YkLo2SPm8bdk4s=;
	b=Ayk9stk8W3Jqge7aXSu7Eqc6uLJGB6ynDgg11qOVB0QFruZsAu3TMHXyheaw0SfP
	DfouO9qlWAwMnDlGMvleMcBVpqUwjxaF4x14sjKabmItYkK/3nS2lWF4vZmT8awElO9
	peXy79XcnnQy3LFNvlIHvJ77veLR5clVwIVgdiD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656319612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TSLiy78/XVidRocA5BjugasermrO8YkLo2SPm8bdk4s=;
	b=h8jbAqxR3RmHPRTrQuPFm/heAZxPWZ+2Z1Z/RQIuM8eaF+RmkerftGBnPrw+qlzn
	FRXAo5mhDg9uZS18F2/Rr6J85m0P/0f6am2z1317x/1Py82azIhzPRelf/OPRLafo3E
	/9HKWDE37BzED1myh5W2SK5IKncsWPL2j4Jl8tHg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a457956d-8e3a8d88-cfe8-4c29-9aaf-ccd00d664303-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a14fe79f18ca41e36b16d6199406cd7a7e2c73b1cd58d80c9acfabfb49003ee3
Date: Mon, 27 Jun 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656319612

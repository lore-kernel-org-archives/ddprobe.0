Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F303E1366
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 05:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647234685;
	h=To:Subject:From:Message-Id:Date;
	bh=hLUiRRXefcQbdRPcTJ1Evn4+yPK6jkL1KfhARmNH0PE=;
	b=hHhdo8FKuYCN+lBTYSZ0IL/xcPyNPs2WeL+BotSUOylaq2R7I+J2P7oOlMTm2NB7
	KXpMWxFHPsCAV/DvF/zVtSeRb1BZqrbG8nI8plJDP8Qkc9A6birifwPHUUNGfDQyTGj
	Lr2YsC9YK1yDu+4ZYcooCe13CdCR8b6fyRHYBiKw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647234685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hLUiRRXefcQbdRPcTJ1Evn4+yPK6jkL1KfhARmNH0PE=;
	b=LFQWLEtv52NUlDcsxT2rctEdjzd3hyP+t44YuJDVyOdhHIkAHJawXG53UwHoHRFY
	ixKLKR3ITFfGFOtDvXheeTxHWPladrtScenZuYB4yYFxsvyd0En4VWh0VevXi/AM4N0
	zN2S2XTWmjLWBipyTYm9k5OKz97VMuiCjK32bwO4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f86d69756-afed1145-f821-4faf-8276-63dde513ba13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7d19d7d8c3ab8f561abe19f35f5f70c3c676666b8a37b631dcea906cada2af8
Date: Mon, 14 Mar 2022 05:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647234684

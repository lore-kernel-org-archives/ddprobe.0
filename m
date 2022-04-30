Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FDA5468A
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 04:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651293958;
	h=To:Subject:From:Message-Id:Date;
	bh=aT+6K9WaVRmeoHWX67kjYOSZ+GxHz0L8ZRp9A/BbAac=;
	b=MuzTA28tSvRmSHCGgeIj/RGCjHbOKPfQz57v1awA53Iip4+Mi17w19pdPM/nFgNr
	V5LT/A2Txi5Cua298VIE3cIwPdIh6I2hsNIxzQ3PplByI5E7lBw8jILXIU6KkXctw6k
	DyVxostu3tX+ntsojcDIZPYVPtCHHRc1i69CKUZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651293958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aT+6K9WaVRmeoHWX67kjYOSZ+GxHz0L8ZRp9A/BbAac=;
	b=T3ufoi86k3MVrE6XQ13I1GrrUmW71yfN4dYOyICf3RiewbDwrML2Zv/uW55C3Lnr
	Jj6gwrJ5/PzMUgX1T+qClP6VUhQ8Y6Z0hEkwlkjY8TY0gD5chwbvY3caTi1sziTYEUT
	keavT32CooBdLuyhsNhia93683JdzWXw2vqn8emc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018078ca310a-36168fab-5c52-4e21-af5c-78869790848b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 337b929b48daec8b5ecbc100df60bbaf21f3bd96f07c9d8a791c0b52c7a1a3a6
Date: Sat, 30 Apr 2022 04:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651293958

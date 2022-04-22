Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082E528E4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 19:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650655498;
	h=To:Subject:From:Message-Id:Date;
	bh=4sGieGNJo5jZezEjUFvkcXEOS1QiUcx/8vJXOoCS1VU=;
	b=Z5SMHOQAL0bqZg2Kh4S/iebdAyNYbDHBE5HblpYqbTgMrsk9vfmefh3rFX3obx4+
	nWOoC5nkTEZ2hoMxyrvIPfEx/3F79SjLhlgeXqkN6Jgbe8T19mDH2CTbl36suYqZzf4
	LHyy6ybrYawWFvtkO299C6m/mTQ1LM0a+lx7937Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650655498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4sGieGNJo5jZezEjUFvkcXEOS1QiUcx/8vJXOoCS1VU=;
	b=He7l2cex2orfErRj6pRc4Ocbj5ib01YZnHzO2+2QHK0rLQuTIlKxIi9swBaqKCt4
	BIVPEnAkYMbVa5C1cIZBh6ekDpMEfFHSNjq4DV6SqWkl+3qqmurSgjQrMBmJcF92tz+
	Azc2ImI0/k/7dP0xsixoEZ5vVmCJdcw2aUmuwj2M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018052bc1043-fc8348d3-df8e-46f3-b4ae-bf89880f5b73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a8667a8b34e25952c80aad384e0cd86a31f728fa64ed2e80718a98546576ff1
Date: Fri, 22 Apr 2022 19:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650655498

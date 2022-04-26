Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D577B7E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 14:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650983338;
	h=To:Subject:From:Message-Id:Date;
	bh=IFo3/tKplld6UNSPQs1206gokjglNeewHhPS7T0htV0=;
	b=BenKtUNlrotv7E3OnPMv3hMc5JeumARyJG2lS4x3B0QVEuMgHVA5w7Wnn3ihr5m9
	H2msBCgGaR5fwDHx4VKgI0Hk0153BWmUplcr0bs/CoGykbpNwU0juFAJh1COsdhOoBH
	95wSb4QzvPIHRB8tG+o19PC2h4XlPyufTYJrZu1k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650983338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IFo3/tKplld6UNSPQs1206gokjglNeewHhPS7T0htV0=;
	b=byj2Tg9cvbATOInMAeuqv3JdJDsBFA8WftCIGFpAawcZpSv0228x5nWsl8nxG+gE
	Tx9X9iB1mUfniMDTbxeuH4Qx3c7hVMQjDmOhz9MW1c51MTRvC2cVvvmJT6eG09kw1Yg
	3vjrKMqFIeWpbIHhye2FQAo155odGl3M/1x/p2Qo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018066468106-574d876b-b92e-43c9-92a9-8353fc26bf5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0467f6f860191e7be87d43da8735b2a5a99f34ffca9cfbcc1bfff1c030fab2d5
Date: Tue, 26 Apr 2022 14:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650983338

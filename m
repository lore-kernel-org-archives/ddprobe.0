Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9513B3C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645880784;
	h=To:Subject:From:Message-Id:Date;
	bh=GJ7x7INw/2XLnhxJ79DSn2JHGgtnEtUo+u9Fa5UAjqE=;
	b=NXFNTmtn3riNZF9PGYyKqCOPs3MHLlCdQfw2Regcre5dQkjrWaF4EOiaBd8GBxjk
	7GLQGjyqsL9I4XCDNoKnZ56GyoSxmzb3jZ4RxL+N8r4gvna428nhMXFD7gNBcEQ10An
	dTMMcTVM+fZbdsfIY2Xn/IshLYII4P8pXHLT9ReM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645880784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GJ7x7INw/2XLnhxJ79DSn2JHGgtnEtUo+u9Fa5UAjqE=;
	b=AnUD0OZRpLJhdi/z0uZfCyUoBaTQjIi378ul7v0ghaM+n14NgJNZZaB9f9PkPJtW
	GQu49ezGuPo4Wa+amtFosPIK2SZttE2TCYgr5WxoLO3R2OVrTy8uAfUSbIUW0xGYfdG
	9qqxlNeRx1ojEexvHhQex39yAnE5qGcgLxQDkZpk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3623b77c-a0b884ed-b056-414a-a5af-8f83324477ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 301b47c82ae07643a3977f3a9e37153c59e4605ad734f0532aa65fc0ffc7aef3
Date: Sat, 26 Feb 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645880784

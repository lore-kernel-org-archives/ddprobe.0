Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41C43234
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 23:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649977978;
	h=To:Subject:From:Message-Id:Date;
	bh=K5HKqMC8wDNaMYKtQhQ+niTsxh3L5M7p4VhzB7iYNpM=;
	b=P+r3fwLalyLjEU6P2odhSJ+8gOLrgJPZY+ulVESKeQLui5V0Mqtmji6ic+2nbP0q
	q/peVyigup89vJjgfSSWBxlPHRWAwSnN2jqJSMDdHCs8BtZ4iqD1FTX++NHKaeCvC9X
	6URt7SSsXoBwikZSmq2eoOxMljrzGYy/Ha1G+kEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649977978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K5HKqMC8wDNaMYKtQhQ+niTsxh3L5M7p4VhzB7iYNpM=;
	b=iKMG/yfLi6EaoekMdjl6vuE82CDzgnoHPQz2o04Jfqe+cgfQTrnL4tOV9y1vX/DK
	G5xm8MUmsCJHvs3tN4uc1UPuNIulkFZzKypXL6Q5ISbgNrONOxwTqlZR0Ts3cLlkDxF
	F6VBWCWQfg/rjYk1wjD+auGStABg5g7aVI1NFEyw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802a59eda7-1df7bf0d-8c0e-4895-97e8-e61aefc564eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0af83e83024cfccfab1cf0217f57d63b8d62d0058a94f7be436499a537678d1
Date: Thu, 14 Apr 2022 23:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649977978

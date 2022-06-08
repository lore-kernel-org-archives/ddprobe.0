Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C784F7C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 22:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654726919;
	h=To:Subject:From:Message-Id:Date;
	bh=qQyWMaaJ9KqbV+9SMC8Nk58JFQNVVBeSQLDMq6KVDEY=;
	b=lcuyDtntp102emVkkzluz+jmpjCeiKuyh33AG5qeW9xM0OuUr28yylKwEZzZi2tb
	2g1anFF7jAjtE6lmZDPRe+lA3kLvgoMh/ysqYfLe5cjUkxIFkZRO+E3+4yapHUCc5/l
	eWG3OcZjJel2G4zZ0MDXdV6FD9pb0S1bkBoXSCak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654726919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qQyWMaaJ9KqbV+9SMC8Nk58JFQNVVBeSQLDMq6KVDEY=;
	b=VJ71SoDTYwaTVzvLkx8EC+HeBct2QD7hpdUsFEE+BMpMEl4ao+6GsLjadk13YDgT
	ApXx75izik1qSih1TI2YHYvfW2OOs2xDmelrPH2VALvFti5HWc9XvPviNcEBGptBoYm
	d0/FUPLldNdzSNfKgxuxr6qidHXq/wWY6eYm4/JE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814569042a-0710ba61-8416-46ec-a362-09da9fa349df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b95bc0e3ce0662f9e3bfe1ccd3f1f288a6ae6fd14de0e5607ab2388d0b2a90a4
Date: Wed, 8 Jun 2022 22:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654726919

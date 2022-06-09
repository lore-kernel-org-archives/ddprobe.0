Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165CC7C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 21:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654811279;
	h=To:Subject:From:Message-Id:Date;
	bh=+FCs2hx6EXWTPJ8D2ZqEtAD70tJlvdzsk4n0p6bXRmg=;
	b=fK2sjs0N96TZtoECMQeZgdrsbatiXXRRDr4A0wEzehzbV7PJtvHux3jWfzq4nxQc
	qc1wX5iA9hzWHd6mewd+vIO1Uk0OEMPzukVdMBQl0z1a29Z7t8sN/9x8cDzzEBRLqdN
	zomCB7xxb09ofVZSN46UY7K7270jDELqKMTD8Ycw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654811279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+FCs2hx6EXWTPJ8D2ZqEtAD70tJlvdzsk4n0p6bXRmg=;
	b=cHpPInHOVuQuWdiNGvIXt6YmFdKUIk/3dvRaAsvi9MUqJYHV6FrFT3bTsdARrHDX
	yBCGGI5Qotr6XDjxOqvMOdlZsqge8hYwuK81ukgFIlRjn1CrbrMdZhT3HjFGrxVv4mD
	R5LWkhIy2LrS/A2cRUMaj0BuS2Jlv/cQp2HDm64Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814a703fba-61758dec-ee49-4460-a3da-d46282ee957a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14253a4d33342d079e0567b28c85431e1546088df0e21e98fa81c43efbacef3a
Date: Thu, 9 Jun 2022 21:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654811279

Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD957A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 23:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650239398;
	h=To:Subject:From:Message-Id:Date;
	bh=ANXgjA6ypr2TRcl3ExV8mnYlMO8hEvQ6TYYOQSq4mRE=;
	b=e5AQpmljm4KuJyVAiK9UFrwJsX2e06QwqzyPgh0ALeJDU6gmHjKtvswCyAyc1Xck
	ntaEJUf4Xt5wZ7QbqYnimkg3LEbBgSTsezcaxl8tW13Gkjs7oJQp+5pnksCHIjkLXFj
	gJuCUXXJidYWakrOOlkf1+Q776YOCbc/aQdU3i68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650239398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ANXgjA6ypr2TRcl3ExV8mnYlMO8hEvQ6TYYOQSq4mRE=;
	b=eV6AhkwFu9j6boEsQ7PEupf0vmNRZZqrVje08TmjQKewu/sA+rzQCN951S4GTprJ
	CfOCf7H/+WOo7LudMD4ciWqHr6gY2wpxVnw5AILLSXs35XHF1mTIdMEY4zRJCoszrmX
	VGeBEhS3k7gfbTxvPviJ2Vg9jFu95dRQRGVqKrUs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018039eee1a3-18b1cebb-8038-4797-8346-9f0982312dfc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc68660057847dc14c652c303083cde1ff897c19fb2f0c43658d6ca8eb2f61d3
Date: Sun, 17 Apr 2022 23:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650239398

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED937E
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 07:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651907278;
	h=To:Subject:From:Message-Id:Date;
	bh=igkgLBM3dtgugZgONPMkdSOdzg/pwCnq4Z7hCyikKzw=;
	b=lMI+WsfcCJP6IPvRcvAn8TnG1dYgYwm2VjOnzlD/FK4heYIxQYxFGuYKTgJf6XXm
	QBQklRrJ+u03exsKUEabhqp8fw7ldGIQESDbUCi1hHPNFRthPMGvaF/v0UEkwM+ILzI
	IADVaL8INBcK4jRn84Vj/7ZcOoEsERXnxjB6lg0I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651907278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=igkgLBM3dtgugZgONPMkdSOdzg/pwCnq4Z7hCyikKzw=;
	b=UDeE9aeJDwo5/MqxvheRztuKhUr2rVGtePVaTeQ58uHkKnfDpC4HIpS+XiYzjcSk
	YUxa9XJkbOdj/jwVDqV/5AZdDPxAh017kWF0pZ2UqamoxGRZqtq3Of10nTHC5ZaJFPq
	FURVZn8MWxVj6/UBQaCQx86fbP82kKdKwGhmB5Nk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809d58b5aa-be1b7580-b2dd-4d17-8df9-190144fd5e8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b00921b2ccd7c5f712f480201e8e0692baf303c28a16f718d9a6fb6137cdbca4
Date: Sat, 7 May 2022 07:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651907278

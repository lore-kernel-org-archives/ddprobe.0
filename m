Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2117B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 17:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655573759;
	h=To:Subject:From:Message-Id:Date;
	bh=B8lEC07hcA1RPguxBP+gpw3Jfq4VECKROTcKpZT3SL8=;
	b=Fxa5+7r9hq3ahc7gvAOmau1E1jTnrFh4LArIUef80JovucrQzYl1kePfhKlROeDj
	vyLmGgT50njv2EgHiG5Hxbh8eLgHAkhA9vhBCvboNyCGxItGTdWX+VV4fioO06+9G98
	kz5IubE8LlaOzZI9byZ3FFJF+Cr5BU+lY9rxQ7yg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655573759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B8lEC07hcA1RPguxBP+gpw3Jfq4VECKROTcKpZT3SL8=;
	b=DTGTriThimo/9Qe5u7FkZK5CJ6OcbNpe3PRchIwdwOyRicknTChD1EUCM68eVOXt
	HAxoAtNsOVb6fln+TCNHdTWQim4OCfygVYL1y6J6BiDMfdryyk+SUa9nf9DuBkQ0QfQ
	T5E7ifz90GDT5H7lvYqND9uSNmYm92JNmoPNr3XM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018177e2c546-b01cfdee-89e0-46d0-bf35-3b1bc7ad130d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ebf2a6dc120941e6b45c307be5b74add22a5fc2dfeaa86d37af9a9d3f7d5040
Date: Sat, 18 Jun 2022 17:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655573759

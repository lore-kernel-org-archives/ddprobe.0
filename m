Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAAF0A44
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 07:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655795879;
	h=To:Subject:From:Message-Id:Date;
	bh=zSQAadOyl1+LavK18P5TqtWyWuL4CozvQw+cb/TpRRY=;
	b=U0NIr/Rh14W8w7AQYQ8Vua3xV/DiA0JDeCGkNMbFEg2nEb3KCeCVqO/D5HygMVew
	mBj52eTO/Hmv+2ZJn9PvROP6C1P6PryQ95ed7Cyse1gM/A7Zh8ZoAH2vtXUInNnHF9i
	MIgh1cXasEsta8vlMj1s6Z00z87u5ecaKyF3szLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655795879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zSQAadOyl1+LavK18P5TqtWyWuL4CozvQw+cb/TpRRY=;
	b=MrpuPGlgtgzJ+ERM4Lzj0bginpE0pl3Plm/4uE7lbHH7DHj+2NLHBF7BR2WfOoXb
	nGM8A0zl7yW6v/OxOoNykeeT2j+RcfOLT3PaNSWExmCdDs6QiwqljVkfgbXKYNDPb7x
	OSx7YLbNRSYJhd5oktE1o/oMEDZNCdNdASmsCEJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018185200d51-05be005b-b830-4f71-8791-dd0a2a75c4e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a77acf723aa9d1336b66752c74dca934089e854d8ab0d4eccd793a608c0c685
Date: Tue, 21 Jun 2022 07:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655795879

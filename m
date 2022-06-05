Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732407E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 05:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654405199;
	h=To:Subject:From:Message-Id:Date;
	bh=JnavHON+IcFwoO/RV6MaAHNbnyBbSRYhfnPbnME2cy4=;
	b=NhoF7OhmnJYc0rm6WcsiPeCboBFGd7GqcJ48ptSnSboJlsqiN2Qp4SVdkDHjZwO/
	9IjRevhUl9vvK746FBaQY4qZUrwLXqS25diEN5iQ3jXt6/TxnGIsoKWYVBcA7a6b6FW
	oyyu59edPPpHucpwvC4NwosbTJozWrz6AhdZ+yiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654405199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JnavHON+IcFwoO/RV6MaAHNbnyBbSRYhfnPbnME2cy4=;
	b=gC2UtnIc3dmT5orNAWk8+jvZlDTSaug/d4UxcJBiw6X9IeEHlh8vQj4aW4k/BYfE
	EbgKtkaUMophcOIHgTbSOLTM1qr259KBztofJ0LRhxBy+rad7u8C/++0vE/7TNkjVju
	yy/ZI62vUnFF2g+dl/HuOPgxB13qJy2XjPjKdsKo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181323bf5f4-ed924c4e-4217-47dc-94b9-bb7102aa26ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dbce7fcf085b6fcc71e7c7f7a2b39c1a2a6ed7956eb6d3cda4038b06d77ed2a4
Date: Sun, 5 Jun 2022 04:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654405199

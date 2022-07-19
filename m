Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2A45393
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658261212;
	h=To:Subject:From:Message-Id:Date;
	bh=YmQYfsIACivTZJrRzdApw8gkTAkArlfbHCs6OmfOHQs=;
	b=RYVrYJbLDdA8HxxW3aLdNAosbApZN8PM/We878CaB8FYAagPoGjb+FFc+MbGRxSf
	aXEEZBOdaCsPC73MrVfXsKFnCCNwWNFKnOJQ7Y7jamVLr8lEN4Gi7px97e+tVsNdyx1
	q4uAfNfHE8El6Zhf0IJx2oHBOpKp7LeoPrWRbhlI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658261212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YmQYfsIACivTZJrRzdApw8gkTAkArlfbHCs6OmfOHQs=;
	b=BJ+SIwrGvfcyyOaziJyxLE4iIdxXQiHeA+R9mn/8MbqHl3ST68f8jg7vh9qEwhxy
	ul/tDxKxCdfi2rdfqzTvU9V7m2zmpGV47IEAsoHweoJEI3Wt2DSs5Ur8wJqk09OjUA1
	0d+La+XdPgGKoMHKy6GylGKTkHT60YQ+bmpIjeWM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018218120d31-4f4ae602-4401-4b1e-9763-bd28711b2e46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f70f68653d067f6340e120d1ba0e21abefae1b4e85f3c9ea3fcc6cc3f9a8800f
Date: Tue, 19 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658261212

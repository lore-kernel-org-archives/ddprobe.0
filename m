Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57897372
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661062252;
	h=To:Subject:From:Message-Id:Date;
	bh=YUl3c/89fW0pQWfe/rJtT2M17U9chPHPis7ZShKZn54=;
	b=D4CsCVmpkvBm/zhTMkKXtvOB+5k5N7XbDjrH2SrB6u7ROt57Y9edrLJRHbX6iYxM
	IsZ6RNI6BFPh6zHthQEHTyK6/Xep1RHCtyUMQu9TdIcs2dh6YRULLAqXpdQPKlVZVgK
	y3ycOJ9aCwSFD4Tf41eF8XBgBUFXwxlY239z6Jdc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661062252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YUl3c/89fW0pQWfe/rJtT2M17U9chPHPis7ZShKZn54=;
	b=Glu4j+vjnCzC4XB5/zAvIENRpXO3VCRZkOqm+fsn+aazEMSGsz5jmCfq0QLRXbHs
	PlJYK3Z011RmhmHORGe10E2WcskbZsgAU5Qjsy2h8/MnmCcuk6x48ZqXpNbQr0AhNhG
	Ucfu1d/Mmn/9EDIoRGT+9FHweFnxs5JTEX6Ri7rg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bf0687eb-ca215437-1d1a-4176-a09f-da37812b3340-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 057266e13ef51ef2d1192a00cc93d06927f65f5d6802f8bb3dc7fdd4557f899f
Date: Sun, 21 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661062252

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1FC36A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 22:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652568539;
	h=To:Subject:From:Message-Id:Date;
	bh=t1vBmU0ZXwmfz7rfoJsOqFXvywZYzKyXLm52mAYD1wE=;
	b=APBV9l16dC1b7PMkwX5ICaOZO1GFetG6wB656YA521fI3QvfON9aPUlC83k6ImAZ
	BqCt0Pf5cKXEAVNi0anfClBAv+k3FAz1XSxM7781Ij6GNP5CjqlZvMl1/WFqWcUFKRr
	QAZovqnvsJHE2kA6YLtRoyHvn8X3C81xxrVquQas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652568539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t1vBmU0ZXwmfz7rfoJsOqFXvywZYzKyXLm52mAYD1wE=;
	b=JAps44Uzzcdd8qjUcSOIIBV/VWhu9+XF1F2C4+nRC4zjba4Wbd1ajPI0d7c667H4
	9E/4piKrHIl+fAUShdFr5M+hjagaSSyjuZECfdcyv1YNPllmUX1RFZ8p5ISJhIQ0U9D
	dGsclEPYepNLZ6PonSnr07YQ6WOaD95rcvHaEoNg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c4c2c0c5-8188f457-1f53-4d36-9113-fe88266c5d8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f82e7c1317d4493bb52c3c5c11366b6c0e9a3d1600961634ba5877444a03805
Date: Sat, 14 May 2022 22:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652568539

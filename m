Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8DD7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 13:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658584612;
	h=To:Subject:From:Message-Id:Date;
	bh=geLiCc1Fnb/33syirEP1CxsYJyWNLvbbKBVCdtwFi98=;
	b=AMgf4oW0jGU+CuVvZDq+WL+3m4+I4Zn7H05VAi1Fur9dw6m0ggbEsOvSJy+eYDr+
	AWXZM3ap0ztniqEZAO7oYHIHsgZ7efkn0baeG12ZsDNeYcAh8Tjnocpx3xUL4FsHfVJ
	k19Rvq2zAh4utZRS5yTKbI4NQ1hvaNLLaVSB31uU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658584612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=geLiCc1Fnb/33syirEP1CxsYJyWNLvbbKBVCdtwFi98=;
	b=PHWJs676Ef8CsI6WNk+UrDR9sq/TTiJbg1elooAKMLIeczgBLtVphpqc0VNhmoEv
	ULZ/YTvbRZ0e0dO34CDRdjjFvaA4hBUpDV8CieRxmIss3Jugr1fUM0m0j4iS23HDtdI
	QkzMARHLVEPD3rorfSYU1ii2llA0NTsd/W9yZ2WQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822b58bdd3-a933f9a8-04d6-4602-a422-ca70b35d4b3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bd448eb7f2bcf23f1b593a65e4635131ff44c98fe873b49c10c8804a591b3ec
Date: Sat, 23 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658584612

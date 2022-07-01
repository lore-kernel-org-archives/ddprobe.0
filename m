Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061BE1850
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 12:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656677212;
	h=To:Subject:From:Message-Id:Date;
	bh=DY+X+CS2xsGfrMZh+7iMjK5Gj0eh5s7cJ56FcC281TU=;
	b=k2xnTZ12/V/KKPxpoB0uVAcxdl2QYi8xzZc4d5pzHjP7UcbPxGWPTwyiTI7bdlo+
	RU8mObTB93I36Undx2KCbBT32GsKMK4YSQgkzuTl5jztBPFTZhXXAQKIptTcslL53ev
	LLb9iouAwSL+iAIsIeYLSAkYYCZKaCjOGU4BEsS4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656677212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DY+X+CS2xsGfrMZh+7iMjK5Gj0eh5s7cJ56FcC281TU=;
	b=jsgeqJ9iDxGqFPHQvho7Qme9wsFADdjxrCv3pJRNr90rWdxSRv57tPz6+56vM1tG
	SfUiUtrCTEX7M353IIPGdzQZhLz6Pby1VkKf6mS68FBz38s275op/01EimAoyvpxSnc
	nvmpmG6QgizrdeEUkrY+H3RC4MdNm5Jbz1xQFHIU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b9a82060-77d75ffc-1939-47f6-93c6-96512a20170f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3f4e3794d5031a942c94cee357d68d552c444276d515d3b1959e033108d1c45
Date: Fri, 1 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656677212

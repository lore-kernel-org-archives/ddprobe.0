Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 802D82106
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658768812;
	h=To:Subject:From:Message-Id:Date;
	bh=I8JN+wi0AkqLBLCeVuduUuD3QZ/fv3ckWduFk116GHw=;
	b=Z7ib356eqGBFQwn6TfvCRwjdzcQOZU7uMx+VAnfQOsyqMG+vwzsC6DiuBSHL3L4G
	5j08QI1xD8t2Bs400peXBdub1EK4Qll7i4ZAqqsQSnVSYYG4+w4JY/VA55y5PZgarj1
	/3Fje5+JFUdENDxpKSyXu6Hbl6ODSXH3j9uYm+Og=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658768812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I8JN+wi0AkqLBLCeVuduUuD3QZ/fv3ckWduFk116GHw=;
	b=EMdEHjsv+sprKMBZVRnvwHxXGfsh3O9kzu9Alk/l6VcJZlbvFotIhUUw2m4fo6X+
	WuNpDEG9rTgaqv5e4vAjlo39GM5utwDtf0z6yOkCcu8966DJGUrlg/7RP3WuLC03TOY
	g9dw2aW+ky8Sco6oUp4VkdhGrvqLc8RJI5p1CH0o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018236536913-ce0eb585-fdf5-4248-abe3-f5360d234b58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50e00bbb99b066dc8bc47c519087c77ad038737d1b72c0be69827973bda11936
Date: Mon, 25 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658768812

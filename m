Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8386E7E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 01:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658625412;
	h=To:Subject:From:Message-Id:Date;
	bh=sEnVSlcpxUGWuKoQomxoFTNjXRHaBzrD1UCEnbzC76E=;
	b=cSJMcK2cu5wdhNkWyMaDjOkjwd1kal/7/ueHmuuElbZu1YZd4lEX0pDp5H8/YJYU
	dwaUvePQmfPBqZQ9Zyvc1QJPHUEHVY+MlxpxjEiRo378YELA9C5/QdJLyDChkwcff7q
	kDyupfY0CC2mw50ZjMI2zWmgt8n3DclwrtIMm9Js=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658625412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sEnVSlcpxUGWuKoQomxoFTNjXRHaBzrD1UCEnbzC76E=;
	b=MV/FpKm7S/uBTwLejPpG4h3ks2oCV5BCyqKAs8UHWgtIJYRoGPIJsHSdMIG6Vkgb
	RIF6y8LbIDtfS1z+R0ixYro8BtK7V4RK6/cqcDPj2QD/JosWpHlgx8BUCZuYcJ0RqsE
	659mYZPdMRSsZ4nsZWUSpc0z3AMNBPOZ1EqdpOgg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822dc74cba-4107ab22-364e-4476-9e59-f8548e86def5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de4e43df7b12e1ea5239f815333f0fc99952c46e4aa03461de94d965e3f039a5
Date: Sun, 24 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658625412

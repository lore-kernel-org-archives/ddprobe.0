Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D06A1364
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659530452;
	h=To:Subject:From:Message-Id:Date;
	bh=CGiE61dzWTaDF5OfJ1kl5MqilrLSwmLCRdZsSn1jqGE=;
	b=RcN9oeorF4C5N8JfY9IG6Qh4UOVVys8ZOVkE5HnZ7NIyy16pGiCRTCnAkuI4kmXZ
	4xRHIo1qHnBjZDXbLXvD/IkEmUlTGCk54xdD+wdOleQ1e93R0cFIpUYgGwJHedFC13X
	bl/YqKsxm8qYW9ys5ID5651GJhxtsJx+9KfTN2M8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659530452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CGiE61dzWTaDF5OfJ1kl5MqilrLSwmLCRdZsSn1jqGE=;
	b=FUvieNVntSdD4NKTSb7s4N+5GUzsPqJEUOlPdm96Mb5p+HOnrUzgOG/jbPc4sOE1
	4Fno0R0B7ljxUWyRbr+95YCHPXDCRogX28DFmnrPr9aCp0bMrobO8Bw+uV3uVC5D7uU
	ZjFX3ohkAdKF/nXX9jkgKvOQUrLQs50EoHiw3IhE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018263b91e55-d8e10780-66b8-47f8-92f8-86e1b9c8a0ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb1817e65e73d65ffeda8ebadd3b814f787aac5dd41d8c2ad5e851b94813bf55
Date: Wed, 3 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659530452

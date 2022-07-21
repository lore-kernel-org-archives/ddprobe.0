Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B3551854
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 06:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658385412;
	h=To:Subject:From:Message-Id:Date;
	bh=h4tw+ra0/myeX4I0mp3qIP7y2/vQrcHRhWHDkOMXU7A=;
	b=CRqChPX8pr5W8bfJ54pPqoU7ZUWjuCSBQEfFwJQkiUgHCQBMlyiHp1a9bnHnpB+T
	pqle+S1pchJJBbHhY2GpXY8nkQC8PJ+kM5oms1b7EdOoCb0vB8qOR7ZOcM+ixvZaCgM
	pqvGCBKHh8huADjb0Hzjpb7xRmelS3qYXKI4Bg3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658385412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h4tw+ra0/myeX4I0mp3qIP7y2/vQrcHRhWHDkOMXU7A=;
	b=Dx583KcHJtmblxgiZJvCz0ZPkdBS/FHoVc4zGJrcmzZ2c8WoEf1pHlWpmiDmxCkk
	YPDIDqnnXCtSBbzKGzxa32L8OTrX0oAghztoFnXNbAoCfeenS0vH4R8aDUNlbzMGtW6
	OE2AlRwn+odvw0DtatVHLXpf82tjPqHLA7BJXLSk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821f7930d5-63ea341e-2c66-4194-a703-1b14df1047ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1c3b40c6737091f31ba55c5ec1d81faa112e98b28e067d395998f10e38f9f20
Date: Thu, 21 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658385412

Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DCB4A0B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659310852;
	h=To:Subject:From:Message-Id:Date;
	bh=cSloP78KAzIn8ESEjicUsyUtVDEsOAjXf6lJ3xma4Rs=;
	b=iKnIaeGpNmDQ2IDxftNUHbISXXkaWI7dojy+ovc/qeDAKNkHxLVFaiisYRZP/6XB
	jBSo5JYHE+evssqGmdMa8vMRGzmlCtmhjwW7zPY3YvJOduxOr9hTDhiMUnB75H76czS
	VMAt9RXrpQeFp8ZyOs8SPQPiPlUVgifAX7sA0SNk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659310852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cSloP78KAzIn8ESEjicUsyUtVDEsOAjXf6lJ3xma4Rs=;
	b=RSfejf9WzcAFmBm0rROheu0u+ROKAtv80z7snAuyrVL6dc+t7F7RYPoHiTWz4naJ
	9gMJaVrfpudu86HTFf/QZJWB7kO7ydidjk85Yl3G4hmm/E75xoJ3CRCV/LHOlKTVhay
	br0jM52NkBMj6IBwz8RXWvElmGyb37XuRfkF/NRo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018256a249b2-aef7221a-d8cb-4bff-b6ee-8727e1376959-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7855a0856ec25c9a81b445dfa20cb7645530a7f6a5ae786e1bcfbb12b01224ad
Date: Sun, 31 Jul 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659310852

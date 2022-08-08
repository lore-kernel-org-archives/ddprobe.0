Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EE128EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659958852;
	h=To:Subject:From:Message-Id:Date;
	bh=T5KZ5QJCRDgpDVwtM7QB/TMpagLuvaHgKf/d8ddZFFY=;
	b=UDhzb2DvXgEbSqrCMKqH+TbBN2/hREMceL6eGms0F17G5GRG6nO02c4Sk+TS6zBM
	tzHlTW0uzWoncDF/mAQAPQpIAm2WUFQ56l4j7UQbxZz9c46HVyUWMd+KAkMBxrlqM2S
	dbpyAoNFvJQissSB1nLnmbgnP2+ukTanlBfuo4zs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659958852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T5KZ5QJCRDgpDVwtM7QB/TMpagLuvaHgKf/d8ddZFFY=;
	b=XWtEEUUbqDITAfpyNvrSXLEVdAxK2wfkpGKxFJg5C5JUCBEuKE4L5nQEPjZ+CjAf
	KIErF0ai88IbSET4YXYQZODp02DTc0yjH426210eXExZZC2MWUK8uU2S5v5pR4OMUtw
	hlLWpSQLT/ifEvVvTLgAW1n7An6rOMfBkv0OOs3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827d41fbc9-c11ce232-f467-458f-b3a6-d432a53ceb42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7eded1d3095e72f2847f83e4b06cfd2e41e5bce1023132258c1365f10fb9b598
Date: Mon, 8 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659958852

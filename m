Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0756A36E
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 00:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653266339;
	h=To:Subject:From:Message-Id:Date;
	bh=W1nC+RwZ4yGs1fPtXzGqYER8cay9kK+7B19f2OG9/Og=;
	b=WV5Nu0IX+Ey4vsOSw8+g/D89UiBwOkMc+5cC55H5LaRqSIfgtvEI7f1z1HadqYEQ
	10K2ID/ftcTgg05xmQ6zAG/dc7xlj8E+Pg3abhOJOBLLMWvCgjYzQPJ4lx+QVFUoMIH
	T7FHYp25wzA3+7VuWWjUB9UhPiDWQeF5awGV2VQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653266339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W1nC+RwZ4yGs1fPtXzGqYER8cay9kK+7B19f2OG9/Og=;
	b=J7ZnJG+1I6bqT96S3FmbLqE8ziMr7ldlYDLWaut+6Zax6VMEwPh4W2k4eN7Nl60h
	vfnQrxH/ycseU2WIm7T8MKpubOefDEilqFGmz04/ksRgAPZgElbHeKG7K8GOIiF5nKJ
	wiaIbezMMLxNsn6KB7iA0Igul5WJy6nkdwhDfUTw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ee5a55fb-ea331c3e-ac63-4235-8af7-5db8f58404fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24989902a29b3f8a82e4dc1097fe1ff122554d1dc95f16dc782dcf3a04e75644
Date: Mon, 23 May 2022 00:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653266339

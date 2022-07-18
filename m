Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C6D7FC
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 01:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658107612;
	h=To:Subject:From:Message-Id:Date;
	bh=LEOLFfMRbsn5kAXyzA5nPuay5OY1eJW95tetQb0/944=;
	b=bg08umvOQjNYhZuf7p8MQcxxvrgNNzQD/ASIRmznn8JSTvkrfDxZ/RPZrlFqPvQD
	ic9hijE5I3ABtXcC2XVGPMn944olqzCrGetx0VMeg4d5CMNiQP11ToDjlhcug4dYeXA
	nQyXohY/yxjc97Bx6c6ylafJClbLzx1MohCIWTBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658107612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LEOLFfMRbsn5kAXyzA5nPuay5OY1eJW95tetQb0/944=;
	b=E4auk6pZRSFnzRxsm7v3JktDHln6BZv6rKeCalGxaRwwNkoYQ5uAtWRdfBjh0aoE
	Tcumc+Hjg2PXNBVIS9v8+Iwb6XY0+h7ma1GyqGZOBBfOZpz6s3P+PLRCpNSnjzNYVrs
	gRAOjb+m/dVVqw/V3xQbCCmdtTy5x9WdMNQcvd7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820eea4c76-99012543-13b9-41dd-90c9-49f5167e2fe8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1244fb952e1687a6d3e662ad21fa6de5f657b9675e64c91a52440ea78767928b
Date: Mon, 18 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658107612

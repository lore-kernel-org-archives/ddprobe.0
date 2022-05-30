Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED26D3234
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 20:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653943259;
	h=To:Subject:From:Message-Id:Date;
	bh=X/wy4j3eaePYaXUIaK2YXJpY1/l3GE/F8Jd/YxoEbY4=;
	b=V64xbVYHoE2gkntlHjoyEBYAOWVIn523yfA1QPGO8igO2B3UKvBaW+Tytby7QXs0
	0eezLmxEBMPJBCktRm5RRTy67yWoK5ilWhue8DMIfqDW64koWpvoagC5cV+r3BgjgG0
	FYquuE1SsH+b6wesUe8N7N49SAndTg4pfBjh6vzo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653943259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X/wy4j3eaePYaXUIaK2YXJpY1/l3GE/F8Jd/YxoEbY4=;
	b=YuHOhN7IimVHBXEPjfJj3Lh6S9wxaiQOLPYzod3b/xrZ/nUaBd+T3Gfg1037GwMW
	fjNIFCepp/SmHEF7oVbGKJgE+3o6BkVCoO9IqIij0rQFcZXIH2WjX3NCd5WiBYd4GLB
	Qvyf5/Z/mKjXWNv+Um7DlEFsNxuDABrsOb/5C4X0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018116b350a6-3401409e-97d8-4207-b39c-9200b53c1205-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8aa0bcf654a519f999f5732196f0aa9917adef6237a42d07f856b83af0b424a0
Date: Mon, 30 May 2022 20:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653943259

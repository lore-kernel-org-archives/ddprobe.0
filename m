Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF9C23A0
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658376412;
	h=To:Subject:From:Message-Id:Date;
	bh=MmU71vw2qMHVmrgRWUbj+vUsEGfqO2WZzSmz8D5HZjw=;
	b=ett0AeTEknSBUD3+hoslXjnwjxbyYOMnLVILhX5QigpdSTcIuqSpFhom9WzlJWYG
	UC+kydnfD01Vlb2r1H4MbW/jOmwicPClGj1gRBKQSRX5kINqW1SPSP+yduWGYl1ZlDd
	PHmWP3O1sJdpB4uwpaCM+1AzpOgczCBTY+KvKg+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658376412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MmU71vw2qMHVmrgRWUbj+vUsEGfqO2WZzSmz8D5HZjw=;
	b=P2xgl9+K7V37aITwarEQ4yPH4x2JWhGWVUzL/fbyR63NS/xGogWYpTOfEAJjBtpX
	0N2Pys91MK3gscpq/mHODn2mnMrMrbt8K2Xj95Khex1yOId2L7qdJp8XS1iv4ANY9AG
	JzUDv1WpggKZChSLLhMF9zoWa3xpew63Z3e0cK7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821eefdc4e-acc57c30-351a-4939-afdd-fc47cd155340-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f85a56ea92e6240373b5abad1b5ccd48313abb3de32c6852aec1d2df4dabb5f
Date: Thu, 21 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658376412

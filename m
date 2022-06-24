Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79ECD23B5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 07:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656057412;
	h=To:Subject:From:Message-Id:Date;
	bh=VRN7eG2HYHLpOyu9ITjHXx8rXPaHZL7pN/ECrbCsnTk=;
	b=FRiB+6sZDs4Ca0B+LyTZ4guPb6po1M8XMOb/ebxOq8ulwFNDRWF9qtcbBcE63CXe
	jA6aaaJ8gHl8JPX6KF9SDgc6hdrP/U1MJ1f3jhlh3Ye5jQ16lskkqR/LPi2apvKUMpd
	CEcXHm8HYkjh0ZPI0PNbUntEMBvfNWAX1z4K5hAo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656057412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VRN7eG2HYHLpOyu9ITjHXx8rXPaHZL7pN/ECrbCsnTk=;
	b=Uo2DM54QKLJhQpB66OTOp8t4sYDFjhEfyVd2D1NeHY954WzurDUeof65hDQn7K+U
	VU4KA/YRJChKGv77wUIgBYJmOfHSAPebOsVT3BAE5vK40sZSw08VPr6hbxiNEGx4k1A
	tleMGgOGvzbsphEupUqeEU46rO9DbFaInz290X9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018194b6bae3-f94bc3cc-1b4c-49d9-9fd1-8f7ede2c8cfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3a89345f787f152684cf68f10b196c61c83c0eabc8b689e2b267f3e657f0b63
Date: Fri, 24 Jun 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656057412

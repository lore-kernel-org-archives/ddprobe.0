Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ADEAEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 15:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655823960;
	h=To:Subject:From:Message-Id:Date;
	bh=BHclKnKDkLMpykdi6ndQJZ/psZf2BPBfiC/hbz4mMDY=;
	b=PrmlOqv6Wc+psJ1AzvUMuFbGA+4228QlR7+0nK6DD2+BxHGG2xeaXI2VmjdzV+R2
	LgWJAKKyURjg6ChnpiwP4PGCqGtw7jLITK2Nnos3K5Wuzs5RsA5wzpWxWzlNrzhFJ0V
	jBZOD8fTeY70EqK+p2/p6QrhF+HR7Mus54fZbb+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655823960;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BHclKnKDkLMpykdi6ndQJZ/psZf2BPBfiC/hbz4mMDY=;
	b=XT80A+G5mverOB/K6eCtFKVrOVkOoJifXbr/aPnYw2pVYKXMbcS2sEoiRR898tuE
	UaHC1xtWSEWn7w0/IEbUcL3y1v2/4fJI3qUCkLoMjx+y54Z/TBU/UkGhmNADXkSik82
	G31/ydXTpa62fIe93OT7/pjV1Uz3TTsOUKn0FOyc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018186cc84ed-082bb103-90ec-4155-945a-881d92375940-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e18989bade4b0113354bf07ebcb46d7a00b1f80a0a23baa578f5206d4daab58b
Date: Tue, 21 Jun 2022 15:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655823959

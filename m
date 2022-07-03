Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381A62CA5
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 21:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656885412;
	h=To:Subject:From:Message-Id:Date;
	bh=1IK9GDY8lfpncsSmQ3qYIIXb90gXchfUxXoqFH41x78=;
	b=hmb5h3jyetaTmVUEk1frPPRwIaYa93qTB/CAuALrMXEvicxQyPtQ6uzudMJaJngX
	qSyaWb1amU/iStZ+wd5FIST7SbTh6TX6HeJPsaHlCw5oG+9tMwmlhvMXRs+x56qBuvj
	5riMug1vP25HDGmwQ1KY7dboE0V1idur4PcnA80M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656885412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1IK9GDY8lfpncsSmQ3qYIIXb90gXchfUxXoqFH41x78=;
	b=IsZVnIKgS7ReR3QTwsiAOm28rchZnmDm5cO/7gbSvmJtINC06F6kzlp0b5Q7D3gJ
	8hKNv3DWHe6f0P0x7QZ9NqVh2jHytIlmKjJ9pjcF6e+fuY/IaXYdnz/DmBSJLYoYe6e
	kEVp7KLPIKfLVkNB3QaWYik9WNT9eZUSZggt8Yag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c61101c1-85cd5ba0-75b0-4241-99c0-0b3b23e050c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25c4b81435423837a37e70a1e995e7a715e050c9b9b0a1996176becaf322b76b
Date: Sun, 3 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656885412

Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A497C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 17:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656092212;
	h=To:Subject:From:Message-Id:Date;
	bh=KZ1wSwewncIIFry5kP1nGm3VCAWV2SI3Ufw3kTdFPxM=;
	b=ChC+yoV3yurM4hKx1Ae2qaUCzNgozRjAOc1dgOkyzBC2uVU+V05MNoIfpm4532Qb
	YFRy0djiQ8qSTVM3VLRoeWU6HQkPopJVXucIAAuQREqO3QlKw591Qr7hoOpoK0HIJY0
	4pbTwzybVAMzSQ6t0B8hXovk3YJUc63Wo7bPKUME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656092212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KZ1wSwewncIIFry5kP1nGm3VCAWV2SI3Ufw3kTdFPxM=;
	b=JMYpwpqexqDZNmE3ayvTk35bM15TWq0IXb2hCX1Jc5PTR5Unx+qdMm4wYWWwbnoG
	cBNNlKKeMQ3iguW3wte+iZErhP233Sam4pbJxRzqTaRwA1NlxletlTDALhuiLvs7eKN
	lWnYLKgNss5MNVG0sAn1jMKPZiu9VSgVqt0Ac+sY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018196c9bc36-0be24acb-d399-4790-a50e-2e02f0ff13f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f401966ceecaf8b1adbb68c751e5decaf0ca38cbea550a33f96ee16e0bdb582
Date: Fri, 24 Jun 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656092212

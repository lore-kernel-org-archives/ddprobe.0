Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EC97C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 08:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656059812;
	h=To:Subject:From:Message-Id:Date;
	bh=0/dDUeVF2vQlWnjoNZOyYO8O6uk9Xu3sVk0KVUDoq3M=;
	b=KMc0Sq/u0q4/UTfo44RImugkkxbPt1/5JwO6JNJSz8xNtXBCltjJ9fD19pjRXvXa
	nD3m+QRm30ZP3qYhTMU1/W1HRO1ozthHNB2uRXMbmvua6W8Jz4UcWxTRcMg5l9nq5af
	iLmu6CKXrCP7Lxyuj0Q0MiMUlQIIlAtlJeO1U92c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656059812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0/dDUeVF2vQlWnjoNZOyYO8O6uk9Xu3sVk0KVUDoq3M=;
	b=CpDY5mbsNVg5rPJ+Hn0OEWZDNQG3e6oyL9aXSF1r18iZvlbBk0pSDMKxQlZE/dRz
	sQH5EbKjex+f48fw5PSCzk9PYv7gJOKx+HdHjgVUjmxLcfolZhUOF6hhZUUosK3tOkA
	MuIFyKvAD78aA4vKMhd/De3HFUyk2PHkAvb0yJQ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018194db59ab-04592ba6-6609-4586-8743-8aaeb2996ef6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 402121256c6b1ef852a2d2a368a610e582f72aad9bbc4b5025eb2b7864d3d8d8
Date: Fri, 24 Jun 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656059812

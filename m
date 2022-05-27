Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3AC37C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 23:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653695939;
	h=To:Subject:From:Message-Id:Date;
	bh=ZYvbRE8s199ZRm/m7ITql2XXojuKdKidGDwsEtSR0S4=;
	b=WwEfCpt1ree35K0hZXs9clRWuY11SGFErDILOsQEzJr+aBTXN6bu8lfhUaqJurv5
	nIosMlMIgvkiuBFbXRaA1h8IZ7xEhOyx+GCjtBN4Y1oqiGzuuKnv3BBHvTrFd2stWJ3
	CBoWBEhDtdZUTB/G7vX9ItTV3ZwnZ4J0ngjIrW+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653695939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZYvbRE8s199ZRm/m7ITql2XXojuKdKidGDwsEtSR0S4=;
	b=ZiaUsl0AFZ4wiy9D52NgfoG5yS8ZsXdxPLHDxoI/GzssxYWkCzVupViZ/0tdSQiI
	quufy2ESY5cN2J7o21gsQA+r8leWv7KGj0aXCpcQJItBBLu+n2CxUgVQ4U360MbUH80
	sH8t30ibtgFvSPNE7fmeZYI+5LbXjAzdabnhWLhU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018107f5830a-900671f1-11a6-4831-8f1b-fd9b750472b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05845b2e582bf7057de7443ad9712ffe903814ea895d116ee31acad260796ab0
Date: Fri, 27 May 2022 23:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653695939

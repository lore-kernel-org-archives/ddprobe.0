Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99512F25
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 17:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652635379;
	h=To:Subject:From:Message-Id:Date;
	bh=nru4CcVpfPQIl7jPyU2LCib2QJD3qI0aKHVt0GDOJCU=;
	b=kyxd9bHlNYzfbA6Uq/HTzQxyJPX4CIGfvakr7711isZnrSt27wiLxCnIaK/8c8/S
	B4gfc+5cuEzcPFH9miAp5PMYLUw3FFh8s5m7a3EAduc4+SCmeBmywsBo0aAWm+wJb0G
	0xfeiuA7yMNrqSrykQsDexiLQArlH0fx/HbArNOk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652635379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nru4CcVpfPQIl7jPyU2LCib2QJD3qI0aKHVt0GDOJCU=;
	b=AS9JOo8EyI5XBdGDMfS1eAeY9/59i7fNe+FJltahaihRIFS47QmcMRATStGu9pZy
	bmcIAzuuuM3O5AqwShrp12YVNYv6FLKdJm2y5cKiZ4/iI16v4iSsk8KbLJnYvOtjhCk
	JrfjYz36oXZzWhRamWLAmUMJL2sVtSTZKnqNcIxM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c8bea64b-9ba23816-9b5a-492b-896d-0d21503d8e4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f95ba7757c1ccbb6edca93804e6056692779aa718746f44c1b83df6897ae2ab1
Date: Sun, 15 May 2022 17:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652635379

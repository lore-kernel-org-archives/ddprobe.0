Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A227B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645906884;
	h=To:Subject:From:Message-Id:Date;
	bh=2SsYnjIk0kZatDQglYLlKtozWr0JRY2FWdJYMPU/Lo4=;
	b=Nli0voDCpzmnXH7p0wrrc1oAnrVu2IUA7o9MdD25/hD8ha3X9duK/gq6VUsMcgzt
	fHeYd+HjiL7rps4U5usaVc40VSMYcpeKDEkOCMpvsqAZAc92rhOPeQvyrq7l8uxMhbP
	I6rNs1h4z6pf7eZjAbX1Nk4pMYtvdOs0Gu6dTcwM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645906884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2SsYnjIk0kZatDQglYLlKtozWr0JRY2FWdJYMPU/Lo4=;
	b=UziwY3TMzB14/C+CHsyKJT1dnaOdnDFHKYlUonkmAI6VtLVhHplEM1JADK5hPdNj
	p0qfnzVO37r/pkW8jCVPcaRPp4qCZ8PyV7V9i4obiXOMf7O/JntfDg1e2CNRRdQsnq0
	zBkxYL7ZfB1iCjFkFKA3a0mgdAl6sXWG9r3DXV/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f37b1f874-04af0997-c717-4731-b8cc-57b6ffe59290-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb24bd9226cfbc6d6db4b0a2db5748df429e6b026d3bd9aef597212bc05b6d24
Date: Sat, 26 Feb 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645906884

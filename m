Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5FD367
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 03:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657163812;
	h=To:Subject:From:Message-Id:Date;
	bh=o4x7fFOppeoJsqc5DXYi4gsYr4e0VtPHgtmOuCaFSPk=;
	b=Ky34EUEIa6qk97MzY0n77hHTIqr23DE/MSFYKHv1imkySL8A6Ol2Bz6b1wuW6uUr
	s0JalQ+o1BwC8Zr7Oa1d9hmo5dOvT2iu6zH5YEfYkKTdF7VKlZbp3x8h3/rKfxktytN
	TV5E7mIRr1NVhaHdWKjwy5HKE/ObgQqXYuJOQ2T4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657163812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o4x7fFOppeoJsqc5DXYi4gsYr4e0VtPHgtmOuCaFSPk=;
	b=UfjOXC3iJGbucCNkAZYWHiFsp8YJarBt/v3X4PyBWJ76YrUCd0grAeQx9GWmZuyz
	kMpNEc8O6xInUd0n8IGFIXS/6NrtL0/ZLX3LWMfXy4rmjkk2agDSroNA+9T8tSrBSEU
	pzigrAeG8EFJl1n1xSS5vKEDDtTL+y3rgYru3uwk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d6a90db6-ab8f5360-1093-4870-85f2-f87cb868203e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb6203a1d7dac9ce872056c06a5a7e1c226e64f9f5c5be47b718369b39a325d7
Date: Thu, 7 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657163812

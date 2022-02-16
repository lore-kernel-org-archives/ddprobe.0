Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C86B38C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645053384;
	h=To:Subject:From:Message-Id:Date;
	bh=TUTQOLR0PFpoLPpMpxbKfwQhnl+r9JRh/og3dLtKKrQ=;
	b=kRI6fGxAFRSL+odVFtLjlZJaAwqzW53W9ilvwA9LgCbGScqJ+F1NW2/t5N5JRkel
	O8jwqeirWUqrMRJvySUKmSbdYGCkxsMy25DUcgFCqp8m62bl4/E1l7Pc8nZqgXwz6lE
	vdtPjwIWJL42TKeNZZhNdHCvpkSPR3dFTtEG7HRA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645053384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TUTQOLR0PFpoLPpMpxbKfwQhnl+r9JRh/og3dLtKKrQ=;
	b=HRnkGhYFsP5nOTcMFhFW8dHJ6PioTLD8E7web+OmAr7co4yt2VFx3zUlwaLKxoqG
	O1V+n6LaLSaWCqL4pPmXeyjZd51G/uvukhkS7e8tXvo2NHpkSbWphMUHORaJ2lm17DI
	QTWxmgqlzK/Y13BMfRuGrlhALMKaw/bTIj4g1dwk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f04d29871-2dcd7a59-6678-45e5-b60f-43b52c25422a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d4f291071d1008fa31dd1e97e8de156bc6ac03972ff35920073c17b1bc9a7ee
Date: Wed, 16 Feb 2022 23:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645053384

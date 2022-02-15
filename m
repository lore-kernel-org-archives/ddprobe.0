Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5FA2186C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644958285;
	h=To:Subject:From:Message-Id:Date;
	bh=FLgmTkKAM7R9V9BQ5XFWkHz2yqcDS3UolDyLwXwJBPE=;
	b=QbcfZAcpNggmIYCWkwkrSHdvWH5q4Oi2cZwRs3nG6Q6NBPba2hAnVi8nYG2ubO/t
	PBQ6gZbmFc5p4a0GdTXFV012zx+fwuVXy6DXilsSh00Uz5uas0H970ByUKWuV8TENaH
	S70RVltY/gkV5rUZB0eUoI8WC8Y7sVcoa0UZZSCk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644958285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FLgmTkKAM7R9V9BQ5XFWkHz2yqcDS3UolDyLwXwJBPE=;
	b=dmkbSbkKoZQFR10iwciqhAcXWJU5ZNqrSQwGRjACxYV8u5OCce4n5sKYDT4m18WA
	vyl6J6Mn4U2EYf7u2mMcnE09N0IQlLUwWKKJpa4w0FdJdqap7U/2xjCMTB4SJYwybIa
	XB0GGovdGRizrl4R2GerrhTx63ExiYXFV35FSQmk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff277be9-de96fee2-a8b7-44f9-bf8b-98ca8301a0c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82387db15e26c755cbafe07d4e5c849597ef2852bab81e8b06d4b4f9af018615
Date: Tue, 15 Feb 2022 20:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644958284

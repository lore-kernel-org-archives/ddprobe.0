Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B3E139C
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 15:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652800679;
	h=To:Subject:From:Message-Id:Date;
	bh=6dAJMdErN9Yroi7ZntKl9smbbe3lWJvTW5O3znZY3Pk=;
	b=MuFVNPV/pS1CdfaUX1IKvK7cBKqCwhWlk3LC81OCEPU09qzj8LSsvURqw2VPGZDE
	frp0kMHxe08E/kyjvx3kOIgnHGaxk10SY8N2mOd2hhkV8DOnHmHf71b/WdQgzXhXVvn
	RNpS7d4989FjqF1OlpaQhn12agOT7/RSZU7KuvVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652800679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6dAJMdErN9Yroi7ZntKl9smbbe3lWJvTW5O3znZY3Pk=;
	b=aceH4UvWqmwnZyAd/TRctLqsyUXDkNY7NqapINfv4JtWmSjiZRXVGzzj4JaZs8UU
	OfkVlLyyh8JDaa8vGAmNxbYM0KDLgPSkXEvjTM/gWVH2YVyBVOV168Ea9tYGEXORpa8
	NMhuiGrWiX/hgKRTqX8li3SBul+j68D3qAy7sBwg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d298edcd-966b99c9-b07c-4330-8ef1-bf130cdee2de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a0a96faeef4ed608f88bf80614ecac00fedf9faad5c5d9a4a75a148b4dcf225
Date: Tue, 17 May 2022 15:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652800679

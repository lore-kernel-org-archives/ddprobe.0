Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30AE2F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647594084;
	h=To:Subject:From:Message-Id:Date;
	bh=00CX7tMymp7BIltzfb2nmAAWSrzkE2TWA4OVS3lmDrs=;
	b=aojGIpGuRJcxdFVtWSM8PrG0qnynZL8LzUePBBT0Oas9L3Q/iyVXkuQgMpczrICh
	gVlLIy928QQ2emgOaxOuhAKxMNu2o47H7YcDtLSaK1MEbVWGxpF9cKw0TNxSAuAM9D4
	Hcizv4eris4jYL9qVEO31465nnt1sbbNlMVJItqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647594084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=00CX7tMymp7BIltzfb2nmAAWSrzkE2TWA4OVS3lmDrs=;
	b=K03xaM4eL+D6f6WOdHvkW4y0RAL5qvn2ZlABAdwqPS4Rx/EIKRJdUaMDRcmZqh3N
	k+uP8KUTqDhBQ4iOU64Nu+RJLYBwxEKYgtBKCqbuzC86MBeHSJYeX3Axrq5WuSFNkZ4
	8f1LrGogAOanibRdsyKU5FI/tv/vKCO4pmxfJOKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c429995-b0527772-7d90-40d5-8914-7d9c7fba9302-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03af264bc387fcaae60e7ead96978a4bd92e8732d149d458783c6ed6941213bb
Date: Fri, 18 Mar 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647594084

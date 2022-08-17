Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679B02F2E
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660747252;
	h=To:Subject:From:Message-Id:Date;
	bh=WmDJil/QeCz4TJjQYR+Qw5cTH8rOVoQLTFoEfA8VQgo=;
	b=RkB17BKXRTLhHZ3fYBMkDahAg+bHAQ0oeJzxHTa/rdudRfqBUOrotexWyKt8cbgV
	kkU9ejzi1k52wHOWUXMn3C/VAoPAgDAlv8hBu5CVV2UGdn6GHdHdJOo9iNifYiXA2Lu
	2Q0M6PxJ8dQqtOx6hQ55jwBWOnBTElvg6AOjI5Dk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660747252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WmDJil/QeCz4TJjQYR+Qw5cTH8rOVoQLTFoEfA8VQgo=;
	b=PM1H6YSoBxkLlFPwTxlH8QzCOBqKb8C31ZgRibeldIe2Ib6LDU9o1sY4nuEP0Iyt
	CY87YN46Mq4nsh0s/yG5DyQ/amyzlq+l41SUHdxz7RsZVvysVT4l0Vv5QhVIxu95xr/
	CsomjXJVYviKxLwH9DF0ZRuHosYNVV7+MCWy9q6c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ac40036f-2b92204e-d7a8-4287-a6ef-986723da8eab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ffd4470760c0ea86ddc4a154410deca83cb273f60b8efa8cc02fc459b3f61f8
Date: Wed, 17 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660747252

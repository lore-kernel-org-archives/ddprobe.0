Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0733F7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 17:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655315039;
	h=To:Subject:From:Message-Id:Date;
	bh=Kvnxm/mE45krVCMwOHEAyAvgM4Qs2NVE7nx/XkCSTE4=;
	b=V/Y0JmFw5CxHk951zfEDfwwD9MB3a4q9kTPqypNP8VnukE0bLdBHtRbGOrJZl5RG
	NYtDno8DWP/XWPY2H8QpWpB4zz0R9s6z1gIXa3JkxwTTetjkTShpgeubjk8XKtyQiy2
	T2rLQsJuP52BAs+EhSALZLL3nYvsjB2N2EfNXvLw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655315039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kvnxm/mE45krVCMwOHEAyAvgM4Qs2NVE7nx/XkCSTE4=;
	b=f2W5QL2OAuFj2B0eA/Q3cED0Lqy0a4m2QcaJEpvF27wC6WVFDDOCZlCK8FmG6xez
	PUkMpNR0NrhvLWH0ETDLdk/RECnckxzshZ1iR7XlDclut8PryrIEUsB7Na6oY+G3P/o
	FfQahUcXRVrclfkLmZ+5HSjCfltB3LDTCsb3b1SU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018168770411-853f5264-7909-45c8-b3fe-02937b317ec0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03fb082d1d02c41f00a78b4ce30381135d3ff8af5182fff70969b3e375747ab8
Date: Wed, 15 Jun 2022 17:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655315039

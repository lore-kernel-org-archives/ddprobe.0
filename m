Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B0C5CC6
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647027085;
	h=To:Subject:From:Message-Id:Date;
	bh=BHYF/0+relj9HAP2ZBIQovJb6yeFfdq6XYZo8+lc74o=;
	b=bKaUW6YRTy/MZkQ3qRyhfzNQfwDr3Pq2BKPWgBiazKYt6kVZ+Y8azFQ+ZDi5gSBi
	xfrHaGkdn5TbzWsbAfisEAEDjRJcD4OFigx9h817meAoqySFwf0YE7VwIgsAyvpEiQg
	TSBsObeBYLv2LegqmnUyG5HNKhbt45AAi1JuyJJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647027085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BHYF/0+relj9HAP2ZBIQovJb6yeFfdq6XYZo8+lc74o=;
	b=LDyQJaGxsFx1Wud7674UYFnv/DaoodhRVu2AUIZostLVItr5ZqmL4ktdj0NsJZGJ
	9pyf+yFasQo3qszc75E2Rr4lcUKCbCAHE17OwWW+4aGs5e/GbElVQcVRgXULqh7B9Rq
	RYzhLG7EUA5hMq8/ch/5x0L8PX3c3ZS8OnuzgkZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a76de55-3d651913-08ed-4f90-a451-e2164904121a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0bf0ad5ddb7813beb010c0482ae52304daf7e4474c688998a21d9f514664c3f
Date: Fri, 11 Mar 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647027084

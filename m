Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410CB29AA
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 15:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656862612;
	h=To:Subject:From:Message-Id:Date;
	bh=kYwh3CslPh6OTbKLmyJtHTOO1TYxWk9LQWN2r/GldXY=;
	b=CQSOIgwOEdbOmG8gFAWBS/YWJH+I5RjBd4DVQ1Lfk3Jp7ln93yhgJ6oS28+DNC/r
	lP+dmh8ikCpZVgKAf+KRGRfEILh4VqXGE58+7mrkO6HYEg1O6OHEZvh98IUt4AXkIem
	lWBiv2qPAOiZ+Homjs1nYEK/gVeYgyn85eVIodM0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656862612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kYwh3CslPh6OTbKLmyJtHTOO1TYxWk9LQWN2r/GldXY=;
	b=bOe1iRSJfCyknJUYEJJ+QJQlOvTtzbK1rELZZ9wwyM3T31Auo2+03f3kuqBMOBSh
	ESAbycLBp+bZZ0Q7yRSOsZMy/5lnmcfQ+HXyN5ABWiO6AFxu+qCMdZo+yrqZwfmt06W
	Ip6VayQkm0YKZgGACnTHTMqtDOKLCG37Ua5CZna8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c4b51bb5-d50058a1-1aee-46b0-ad5d-dd05ff8a7932-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4aef978f63b76585ef45ea602bffc3dda71b4f0a4ac1d165eff9b47cd01526e
Date: Sun, 3 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656862612

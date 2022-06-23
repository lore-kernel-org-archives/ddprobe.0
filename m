Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100941849
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 05:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655963039;
	h=To:Subject:From:Message-Id:Date;
	bh=8Khj99qBunsLTvKEW4kOiWBx68eGUSlC9NwwOYFCKcE=;
	b=MNoCzk3Xc9knm81rlqjDimKT3THtsDHz8xfJ+TQeCsDMgFjt0RQ6GMKv7WwBkLnV
	GN2kOfFKgAakcixa1W5DT1j3QxLaTT5RVhgvCRnmKyzxNIz2GZeQvk8irylKP8PS8hQ
	DV29J/wynC61gqjtcgWlT+MGy52IndkYkU0ZVZ4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655963039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8Khj99qBunsLTvKEW4kOiWBx68eGUSlC9NwwOYFCKcE=;
	b=bSB4SNZZkTHdMX2HBRRHvYjjt+2HsdE2vRk3Tg3v5rOhzlH5mWaRmzpEIsyxGHB/
	rRcbh6Pj/+HR94qw80QpAfxAyt8Bf5qOC20zPC5Do5W4gSOA+4FR8VVMk5bORs7bcPb
	65OFSEPI2dxhmQo5fnQjT2zopQxnX/DgG651+Zd0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818f16b613-3a3e219a-7deb-4cfe-a03b-e1b9e8b45c81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9c28e44ec37c5a1186ee7e1a7a8120e1b3bda3fd1e5b3041cf9410417210407
Date: Thu, 23 Jun 2022 05:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655963039

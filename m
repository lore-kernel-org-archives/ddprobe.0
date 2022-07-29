Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70AC04C72
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659114052;
	h=To:Subject:From:Message-Id:Date;
	bh=8yLfJ0g6nRn5Lz/eKZ0k/wHlvNS2EQq75PaEH+jjB1c=;
	b=fUOANmnmZO9GtOKKVY0v/2NMzm7RbnALbb7U9y9CzY7Q1LljNQEcQHiCwyDCGRLV
	oLQwOQbL2rsvoVQn8ZQyAFdj9pA1kg7sAz2CrEirv1ZuuLYMZ5orccoAfueRNVZQiZs
	ZGqxlurINoNIBpJW9D3QhqQNGCN2oZSgfZeIJTzM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659114052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8yLfJ0g6nRn5Lz/eKZ0k/wHlvNS2EQq75PaEH+jjB1c=;
	b=dnWDMzW6l3QvyL2SNT9vQIvw9MJnfXlDv6QtG+5eJFrf2vriQAx4UP8kkhm17lvA
	vXG/gBnaGbYIFbS7h/oKqMoP+FWyrnQ580u56iUTjF9+aUv5/ajeaqVkYaYeto2lTXp
	D3T/nK8u0Ry3EI4d/3iiSxGm5JZxvVMAqnICXsI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824ae75bd7-98e3902c-e795-4ffd-9edf-0a09e0f3433c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37e582261b2d664cfccc0d56fae74834490fdc8c6b4931058ff52fb703b82512
Date: Fri, 29 Jul 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659114052

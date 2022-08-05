Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721E2290E
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659733852;
	h=To:Subject:From:Message-Id:Date;
	bh=p/6D86mYU83ILdv4hNar4yGgBJwzebzzob3T8MmaNus=;
	b=lbx/QajH6dd2kR/NOwcpinlSe5TJMdE+YIQfg5NMv9NaxX7qPBNRLZB0u4YFIg1b
	Y6RefB5Aj+uDgknr6h4UbWEwhLkuU2w+8Oqb59nzSEQOU0iXEdqe9S7X3UoQiBGR7hz
	x4hlDrBgmmyeIdEeWX3EaJx6NmgV1Hm+HBHQ0QOQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659733852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p/6D86mYU83ILdv4hNar4yGgBJwzebzzob3T8MmaNus=;
	b=iG7eBVQoAyWIs/FWVLc9hc7+aF78RLkoHLPxKs33fTmcmwKsI5cv6T6nZsQDwyhd
	Z+46x0vSCF5MebUkHvuqHcdgsiD3uSRv6zDNmQSh12GUC+9S0V+fEqOs0UW5y6NbqUu
	NzoX/9wbcHCv50XlB5ixE0/l+N4kLgZE/zzZOrW4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826fd8c1d0-7febca9b-cb60-4acf-a6d5-03eb373fdef8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44627484ec0ed70f47e29eaa4ff7501acb03db6ce4b3443aa578597f2f46e29c
Date: Fri, 5 Aug 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659733852

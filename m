Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0367A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659860452;
	h=To:Subject:From:Message-Id:Date;
	bh=BmihlwC0RyqgNeWw9ixwahg47rSNNqy9RfMp9nGBadQ=;
	b=ETrcUdrmrBRdP2SxhvfN1irstgX8SvFQUSb2Zvt+Tw4jnOKDaxi+V5z4vM/gaMzt
	7YXWwx0hYnLRhiIWkXGoGv+PhMAAR5fmiXftJ+aD0fHJOPJKxAbwnXR7Sui6Dx8hvSF
	plvvcR6FKaDnvtI6mR1qQVhqaoOGn7sKy/mC4QBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659860452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BmihlwC0RyqgNeWw9ixwahg47rSNNqy9RfMp9nGBadQ=;
	b=Dc3i4UdqotqRv6pYvHwoxoztAEPE9+WxYzf9auRFFix84Lp8Nnwn/SSWHJVqsSse
	AK0ybBLjJZUCkEAqJvJVzEvpNRNhXxfrANn4jTSylxZQkHiDUZTiRsFWywqp5Wm1Ho2
	kOxQrgxVTGT5TVL7X4aBBVPzaC4wR95EjFdvvrWs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018277648504-edf44752-dd32-4c80-84d2-19c203136538-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b5e7359f23232cf64b85e5c0ea6700050ae631d9544b546259705664d9a8cf7
Date: Sun, 7 Aug 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659860452

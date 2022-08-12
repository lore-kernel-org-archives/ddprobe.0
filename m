Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE9D638
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660297252;
	h=To:Subject:From:Message-Id:Date;
	bh=ZfFWssa1TQ5AYTFhhfQsf1yWvQAJlDP16JimnSPUjVc=;
	b=EldsCs6dlTVQGPDO5njKpEL5YC0uwYM6XVIKmeqpTvT7VbU1yCDwIn4CLVDw9M5O
	LpshpCN3KyIW4f951kmcdO4MJ2LoBQqcgeQ+nZnlSuBpQRYOC94KBHU1OS9XhKDNHYo
	c1xRhLBGSe6Rz95pZhNP/KWAhWQuIV086pOIBXnM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660297252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZfFWssa1TQ5AYTFhhfQsf1yWvQAJlDP16JimnSPUjVc=;
	b=RhejT5r54QHBVbJCz131LTy3ENJtvd5o9UbeNXS2xHpQPZpI4h5ahqxUwke7aOe4
	WpMwrj7jiIbTQSNwRKU0u7yDMk7ZOpljbUGqU2mZGDUMmv26LzlU7lZMOfZl0H4JUCw
	d6cUk1y7IMThCOv87SWEXPXUbTWKO24Me0gENhWI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182916d8ebf-13af54f7-6bd3-4505-b8d3-f7207d194c02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48d06100e03fad2ac418bfdeaf3e8390fa586e32d10c487646112ac2441231ea
Date: Fri, 12 Aug 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660297252

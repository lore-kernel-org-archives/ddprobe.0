Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08094629
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 00:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653353759;
	h=To:Subject:From:Message-Id:Date;
	bh=WuoS8fs+CXNKsNjpOJqwJscQu+vKAkOOommY66WPyno=;
	b=kKvflbgweJfpe1IlSnX+Z9feSa4P28NRJH2wxoLNOaBbasKvey4kUzktVVIskTWu
	2VJQKcPmliX7NMy7wFF/WH6BK2LzQrWBTgtn1V0PZGAkHO10VrauAFTaCjRWkldvjfY
	0I6KhIJjZTqj99e4pSLMI/4sCtGRpdveSKFnS6JE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653353759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WuoS8fs+CXNKsNjpOJqwJscQu+vKAkOOommY66WPyno=;
	b=I/7DSchE2iSl5hkyJa27wZcj0xRba0DvcgDmNIzUVkOHfzxDrw31eyoF+XVo5rhB
	DgX1xKDa8DJBJwgPrPCaLQl1PPA7QNM9dLQFZ38NA/VW2i7my1S61aR6PXtr/WYkHmq
	BIfHxdOv+hmLUiz+hjhBNcyd1oeZBi1phJDAZK6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f3904245-0052070e-97c1-4a9c-a83e-8aad803c642a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7ae051fe1fbfcbdd1aa55b42cda1e3932066a6473fabb0707d5d8b77f326df6
Date: Tue, 24 May 2022 00:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653353759

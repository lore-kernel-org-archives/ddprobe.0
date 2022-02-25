Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A6E10EF
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645752084;
	h=To:Subject:From:Message-Id:Date;
	bh=XuGJsYJOnuJptj/5H5Qf2VlN6uMSyYGcAO7gGKwFxPs=;
	b=AyCIVhMQ5zmxhLep3TxoBqGjU0Fu+qNUEt079M3UoZxI0FVpLmO/O8kgBXmbignj
	1YG6XE/aWOa++SvZpgAGnB4f9nUyZI/wPnFr2jOUNiDWRR+1aABGksKWhLDqiAnN0L9
	H4epGuI2RfwGwwt/jdJBxQE0mh7CoFSrAWh3sM9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645752084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XuGJsYJOnuJptj/5H5Qf2VlN6uMSyYGcAO7gGKwFxPs=;
	b=bmF8IOJ9iPSP8FLAnOd31D9fIEEWlDZbiPfLV6TnE3sFd1+Thhz+oT6NCfjv7RYY
	QZee17p+qK5nHgnigvet/Ozou5fKQQcPcc9Q6bpcY4Y709ULYS8Y97nf0yd3Pw0UFb0
	rPGACklhR0n4e1cIYRfhCeRvMn5zVD30tD7972AI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2e77e928-a8172841-0400-46c8-91eb-5b7d9172570b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d8fca17574eadcde33d7159138fa7a2cc55ee54f956796964ebe8d60322f0f4
Date: Fri, 25 Feb 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645752084

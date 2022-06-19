Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0427B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 23:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655682899;
	h=To:Subject:From:Message-Id:Date;
	bh=1dE8IvbOZGxJAwpcVHxXsDOGwYppyVjqojiqmse+l4w=;
	b=NMGpiPZvgNL3rt+0I5z2mWaNhy54UucIUAs3Ng6iLaM6kyjvSOZvXaEPbPCXeJuY
	1G7RPTcU9DWZVMxCt/imZSToB9jw7ILK8oF89xmXC1nBrhl9n3EpmXT8UT7QBxmq5qE
	UiwAOc69E1U5q6wWTJy7BacZSFwgG2rRQbgLWeEA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655682899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1dE8IvbOZGxJAwpcVHxXsDOGwYppyVjqojiqmse+l4w=;
	b=UGHP+deOipA9DhbrgwVrB2jemECwqjKwukHX5hZGZMjlKqnbWVOt8s7Mzk39MgRh
	h3yXr5WJplKywbPBVxuLBtlLFcsrvM4nPQ9yoy44GBNj0jxir4u+/4mBe9hNzJf++0a
	LL8swPo0tadfXgxIhb3wIqDzASJXSQNJuad66gCE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817e641d17-f865b456-44a4-4984-912b-07e8aa22287b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1147ace266d81af205a7d4bb7d4c8f4b345d68adfbfb36701478c11a9e1f556
Date: Sun, 19 Jun 2022 23:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655682899

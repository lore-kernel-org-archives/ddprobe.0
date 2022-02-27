Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838817B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646005284;
	h=To:Subject:From:Message-Id:Date;
	bh=M7rPD2AIJcZnLG4kNmsVgEzY2DxAvMbU4QHto9zFgx8=;
	b=bzefztNqZADvZWHNLaFxTv3uuSN0aQ8vN8ZJ2vCuBgTjHnnK4NTlCzhEe9ngF62C
	CTWXMLxIBd+gBK7qt6OxRBZznJjYr92wLG9szhOjUglzcxj9q8qlz8oXVJa1tu/gQzB
	R5S+x5Wb9nW6ruHLSST5mXtEkNpgaIoPBN1HkMOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646005284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M7rPD2AIJcZnLG4kNmsVgEzY2DxAvMbU4QHto9zFgx8=;
	b=WpcizKWd9PhrNP67Qu9yJypnNKhgzpwo/K61nMFNY1vg5/VJmzhcXzPUSQmV6FNA
	BQy+yiOma4NrEWH09NmFc7RizbIcvXa/VNOUEUBhpcMKIrDUJWWVgZSUavqz3/WgUKB
	Z1CiEYxqnGxwZ5EJHiq+vpR31qHAYD5/tjA07FC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d8f6fc2-474dcb63-cdb6-489c-ba49-22d2176f5de9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f330f6c7b862fe17f037d9799f77094c197d26e367bbfbeaf4843688947dbb3
Date: Sun, 27 Feb 2022 23:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646005284

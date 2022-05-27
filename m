Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5D71851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 07:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653637079;
	h=To:Subject:From:Message-Id:Date;
	bh=0RgR/92o2DHxGiUCiFJo48wqSWfK5LIERp5tZ+r90dQ=;
	b=SC4gBlkUz/dxM+LFGQ3EcCS1tb+b3pzRj7atJrZU/NHuDp1tSnq0RjomGCKO1rPP
	VNg1yq4Pa2c6l703BCFdW4Taupgn3Do29NXUNrUjYWBIwQz/RbYwUi5Evey15BMotxw
	UUJb1+Ik1WuZpegpG9Mjb/K8sVZCOHuSj20ZADwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653637079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0RgR/92o2DHxGiUCiFJo48wqSWfK5LIERp5tZ+r90dQ=;
	b=LN5MfrT6+R8nx8NZ279sDxcSNjrOCuuNnaVQbsbyQVTiqv788SXPjce9aeX4TJnr
	gb9HHV7kN2PsrgrtSiYOv9r09kIbjWoq4GRT9UybsQwTwm2j3bYsuc0EgkWq9o6OsQ0
	4l9kRe737SqtVq4k2IxCnfCQ2ggIyKeqjqNMm51M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181047360a7-bf72b1c7-394c-4232-b128-cf43a4282171-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66037d94928b499ab0f7f33b59b4ec7d8a93128eef5922ebd8c2586042a8fd85
Date: Fri, 27 May 2022 07:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653637079

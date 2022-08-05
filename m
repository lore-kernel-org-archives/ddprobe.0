Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570EE3232
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659743452;
	h=To:Subject:From:Message-Id:Date;
	bh=gsu/NMmxTx8NMi92XXthbKebba8tFJqHBqgj9V/KiT4=;
	b=IqjHHLTdkcMyrAZo0qTyzfIb63bnKxRm+yvTXxdeM3RyZmf7oQ21ibNZd9n0bfNw
	f8ytOoaUPl2Sbu7bhIdqZ2XRw3Y9+Qs7zCTzcECOjTvdRbjMtlDdLBFb7q2Gc7yX09c
	GMzYD6fkcTEWVCei+rJm+72DGJIYNAl4xwl+jyW0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659743452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gsu/NMmxTx8NMi92XXthbKebba8tFJqHBqgj9V/KiT4=;
	b=TwbEfydnOGxA5VtnKy6CwJkqzZ9KZxUQ/90qouhZl+5jorKaF2JaG/dTN/tR5bKT
	gJ39weFJ92TLMZ8lOZQxEuKLj5elrHPb2P8JrDNtf4Jkrpuk/go963pRRj6lJOjz/M6
	TlCjDaQ/WDtVPhF1qDA/Cb2wsrv2VLHbTHAXjdr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182706b3de3-21ca3705-4eae-4bfd-afb1-cec7983b9b1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8cb2f095ba9f7085ca1b4bb3e07f70b303cd2e6c26984e19629c95e29430cbd
Date: Fri, 5 Aug 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659743452

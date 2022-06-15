Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158677A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 17:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655313179;
	h=To:Subject:From:Message-Id:Date;
	bh=0iWH7ifrbFed1CGGrX//AGnzoa3qj2WDk1ra4LiP1qU=;
	b=hs+OVj5twUNJ3oc/KlCIjJACnfZ/5uyDYrj7eSHoZ94mCYipb2ViYPNo/6MFWqBz
	qA84u6jXjAG4oA4aQ3CbDQFBSL2FIrvSLoiYdfEg8FP8itiA5zv2+YdjD1Jz2ajFA87
	SYo7mnKn6elTUSB3qYidDKmyeCVpNF9o5XLkpb0I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655313179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0iWH7ifrbFed1CGGrX//AGnzoa3qj2WDk1ra4LiP1qU=;
	b=Y07I8Et1AbmXgN2vMmupePf1N6u/h1Ru1kKBcPJ/qa4cXD/zpxvKzyeuFFIB0ymI
	yRu6TvyQagIJxpeKGn6LAKuryFb3zpRjnQtm9oVVsCdvbpCEzTiUH/N//8t3etd8C9I
	p8QrK9bRZGiTBFNheUK/XcRpdJq67ynBZ9uVuoUQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181685aa26d-ae1de807-781a-47df-8cac-b3a24eaed5e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35bc57b44c1e4ce28d30df5b308a807bff412ef6a6de307aae6ae323b072e032
Date: Wed, 15 Jun 2022 17:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655313179

Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E362564
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659176452;
	h=To:Subject:From:Message-Id:Date;
	bh=Ovvcd8GnJ53oMZUrf3Sfqe3wY0YGqzvsevc1up4wN70=;
	b=dnK3MIj0QvQXIo10MK+pPrbGbG9blAEtF8yn8ZNr+WMe1F/Q5wXc/Ci+k9Qh5wwo
	Pn+mA09kio3++48gSy6qliDYvu4ovIECuwNEMzWqhnVr/uSH5Op/x0VEgYfgAgocf99
	eMt0U7pJ270u+AKNRWLuNe57kiXuKqjeoRk5mdLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659176452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ovvcd8GnJ53oMZUrf3Sfqe3wY0YGqzvsevc1up4wN70=;
	b=M/hXpotI9ScZGxHKdRR2isySV14VAd51qRfloQ5LBsjDgWcvQPZnGYxs350RJ+0b
	NonKFn92DkbkYSmWj4ESzjOfs4UrCHFv3TIS7PpcYaOUhY7I3lP3UKSKT7fT93slOMP
	oLj8jEKkP1rDnwa01SiLhpD1Cs3AfACDCHHAXibM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824e9f81cf-f182a0e3-414b-4de2-8393-acdb373e08d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca5365c4528c47bbf4e002ee7bb0fce9197089a0e8cb353b0c30600bced3d6c5
Date: Sat, 30 Jul 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659176452

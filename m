Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CE27462
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 20:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656620212;
	h=To:Subject:From:Message-Id:Date;
	bh=5BAYgtb4vCNF1c5cWW9L2SOu0fDKBLvLjnx2sOQMPpc=;
	b=Seqi4PKgjetqI7C7eOnqatpSTaulKMt76Gz2VMl55K0OfaQC61NXktswuM+guvdT
	7q8//a/4R24tE8xG9IhN+6nnFgJh3Jj/P76537BdUK1jjYb077kvM0HqAjXdxjaez0W
	0kCB5cpIWaoR9+aN9gtnhm/zLi6l44YEpU2CnPeY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656620212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5BAYgtb4vCNF1c5cWW9L2SOu0fDKBLvLjnx2sOQMPpc=;
	b=gVPy/69zqiBsSJYvg2n/yCq147hYVG8FOuNs5Vyg6D+UEpG4j/eHGtS6h18pA5fs
	gCrXpT4a7Ru2mcgrFAqGJbYBiLbF+a/aT3NYGHaFKjK5yOCOPeaBolP5m1wv52Z2Xc1
	QP9K7UqyOFlDB8KnCoH7RG7zX4CtcPv9q6gI5gtE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b642602a-1a398d52-cdfa-4d56-8c11-03448e5a7249-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 160deb19d7cb521bed40c17aedc0e5ec24e7a1312e3f04523f3f5ae41684c886
Date: Thu, 30 Jun 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656620212

Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06211368
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 03:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656387414;
	h=To:Subject:From:Message-Id:Date;
	bh=xnHdVVep+hArT+Werq1mkJgx6SRUdbQhyyy6ms5pGfI=;
	b=HoqK5tDwtDpUXWM/s3/LJkllvsBHLYNofTYKk9OC3nejIeyh6uz3Al3hAp+QK3GQ
	RTbDBLXw1XhaMsg4H8OLyqd4H2uX2RwELaNlL/kovNq3D7en1BGVFNyB4prVpYbHGwr
	xc/z8oBLwFo6b7eJSCnVAIW3p7sNpAkSJ+6Fdkxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656387414;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xnHdVVep+hArT+Werq1mkJgx6SRUdbQhyyy6ms5pGfI=;
	b=Bb0S0c//WP69rey/jlmegcGJZwwS2i5WalXrJ9WJuAVW8ewbW1m8XBWWl041ac6K
	2qTKXxs7iWF8DzBBZg9pbBBKWw1PHQgeLOz5ozlgaUkt+dX/lQpayo3yCKNaQ/f/zBH
	vRbacUQproRLMGcTwrnqgNaJ74+bWna/2X4IH0/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a8622188-b89a1292-7746-491f-bfd8-fdf8a773571e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 525db9f8c2c5b30007e39af23c6006ff219ed6d019340fd30f37d6e5dd57c2f3
Date: Tue, 28 Jun 2022 03:36:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656387412

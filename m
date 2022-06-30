Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007A8A35
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 06:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656572212;
	h=To:Subject:From:Message-Id:Date;
	bh=ACVjg3u8MiHjisUe67dFlbId9lFpmfotmhiellHe3CM=;
	b=F05q23Nh6H2PlV5yRSPZYk3zK/GTM959WeSuJXuUveoIuPs9BqlKo/dh6ROXJGDY
	4qOvOw2lzM3RWZqWbh9iMTpdbJv5DqFYTbJm52XoC5kI1wKROnWu5pvq/YIJaHqg7Da
	MIj3NLrBVXi78ylTnFFFfcWXjIN3Qmn+woMkZ2yo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656572212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ACVjg3u8MiHjisUe67dFlbId9lFpmfotmhiellHe3CM=;
	b=hmt4ixBUtLtzF7qbTtJWaLC7zJW1Z7oZAt9KAOREVC4QGNNzzmqTwPFEj90rRu8r
	XA1ief4ehfevTIcpTuc6ttr4LQjU8WgTa39iw3vxn1tUq1AegCa3XgHBl4uuRuKXar/
	1R0bQ4YTjwbeJFFg/JkMgXA6og9Q0saFAbX1alGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b365f41c-3d6ccf28-cb0d-47c4-b8f5-f45e825b3947-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c2cf68af014ffda6df5b3818f5517b9d255eca5b86966813aff3bef3bfaa263
Date: Thu, 30 Jun 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656572212

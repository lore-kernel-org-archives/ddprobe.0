Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FDF7C
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 00:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653178859;
	h=To:Subject:From:Message-Id:Date;
	bh=n7k9T+U66o5HhdrHyx2aALWkVyI4bPJRCCmT0KZkt6k=;
	b=Et3C3AycRcHA1KpwQmskKs5tffzjSL4CQjOxx+sbVkMuVFg/QWc42OIzVD+8KfAk
	Bf09O1AC5euVeeHdPKqydz2U1L0KtO6DYehrxkNKxNsJ5CLOua8u57D4H2adurRPQSx
	F4I2PCjK1mPImDn2vb+3IQsbXA4IDqPxk6r2LZ0M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653178859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n7k9T+U66o5HhdrHyx2aALWkVyI4bPJRCCmT0KZkt6k=;
	b=JQFKdkUJ+V2leLszCCVduJ94lnLnUpvOXAPjC3iOUdTYP5UexLQQ7qYfAwPCqs+D
	Lbk0wuA84ouZgA0dQ5z4849o4v/V8q3iulB9idCyNFjXD/ljNHhTN73RhDZ/HSeKIYx
	1ZpaBbA0R/01Uuxyxj+qbkCNDijdoeHR1TrZi7Go=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e9237f83-2bb31079-b029-44ba-9d57-f7ff6b7e4e7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 307bacce1b672e5f4884873ce08ab6d2358010f2a50d9f5b013b9add221e6559
Date: Sun, 22 May 2022 00:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653178859

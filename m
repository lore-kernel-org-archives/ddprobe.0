Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A86A20
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658954452;
	h=To:Subject:From:Message-Id:Date;
	bh=FdxZK67bkrF6wU8ELJ39cKJmgLKn3FsLkJrRbbAXMCk=;
	b=O2tlizbNqnuW+2Fveh8kynv0wcu03EAC6xDWcCgeZ21+TaLRp2HolbyRWsMmBP55
	9CcCrLcTgTIsUAZ8WftJFpIDJSp9CyDg1YKswsLQ9uDyEL4Yz5Qk3C8Vo0uqX0FVM6t
	m0WI+9v9RGojuNFM8I/T8HPFonYTlKHDh4LF63+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658954452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FdxZK67bkrF6wU8ELJ39cKJmgLKn3FsLkJrRbbAXMCk=;
	b=QSHcO/RkBqeQvhS2x8loHKcbkzFGy0dhHsLaDOl+qtLTpC12jZJdf1qVD58YCSv0
	3QTHnswe2O7Hpbt2WoGr9UPCr5GKZe6Dtlecqk4COfvv8PvKGR/eiFZqzwdKP88s/BW
	FddWnYf54a0FktS9nAQ3sS2jOkOqs63iOYsvWJtw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018241640e79-4734202c-a1a0-402b-9352-3bfadca99439-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a08a2b1732dfd24f02a004818585931ba00ca0054f6c95fa2dafeec66dc9cfd
Date: Wed, 27 Jul 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658954452

Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284A17A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 08:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657700212;
	h=To:Subject:From:Message-Id:Date;
	bh=gndYuzxrUgaYz1NXhXhVB/gd/eiHYPlQWRWBBy2GFDs=;
	b=TZDF1EVuOQU0emiWovZcDfFqfJG/B1QgXp9LLCs4ogUn5ZvxGGrnIXbf0Ooe4qN5
	LMn9EMOkQxHO+AI2oRKraPh3A84x6F/jmFAhv3RJ7+GMsrGpkFPs98aPpY7hqSCedx+
	LqXAevjzNfunoU7jr1jZt+A3wpEpWnZr0hYTJqLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657700212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gndYuzxrUgaYz1NXhXhVB/gd/eiHYPlQWRWBBy2GFDs=;
	b=Ycz/WpXP+dEygJ3LRMffXq1+ISSAkm+EzdDbJ/qgkGOSA+qkfK0rjRfxKToABKz4
	nEcE8udGdj6pscynQr/wRa+Fh3p1YakrmS5YkF5KQHJzgAj6AC/0QrVq04pzHhOIAaI
	K1PBBnnxP5lVH4r9ReQsS0T0XIQwI+NOsdaaO0uE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f6a1de58-7e4f0f7d-855a-4ffd-8f01-82389894565f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6d1ba5e7af1443be7034fb4b1331ba2678161f950a452189d487b666a339653
Date: Wed, 13 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657700212

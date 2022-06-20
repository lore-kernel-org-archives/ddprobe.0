Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100352562
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 15:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655737979;
	h=To:Subject:From:Message-Id:Date;
	bh=G7wuq0rAZROY/Vy9XPCIVepMA6n+Y/nGJFEFC0ArHMs=;
	b=A8YYwDfm2S67G/dKOa4KQefwipQzeVX7vu8yIXCf6Sxke5wf5nkXy94pILZJaEgO
	ndeFpDLx3RaLhZWiLVPQ0QyyJfhHVBxvSb7dcE5x9xi1hLZC18uA/njwbfYj0x9NQp9
	seFnLSyTn+mtdBdAZGY53jzxM9jkdqQOj6pQpi2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655737979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G7wuq0rAZROY/Vy9XPCIVepMA6n+Y/nGJFEFC0ArHMs=;
	b=GZaLH3g8yvoed+JEu3zNnFNqYUoAvhvIQ6wxhy7lRwKS1Wml/NEufObTGoS941c+
	bU9cKqHT6gOY3QBdMH/aItzA99INuIhNt8N+B+jAMZleVH0xZASaGem/Nj1DXP+wRgM
	FzR6Ef7TQrr12vU3PYFNvjvcAofI9kNX6ID9LsIg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018181ac9140-302a14b2-628a-4c23-984e-2695c090f7f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b02bbb2057a8841cb86b89d30a9fd8aa2ea16ca86183a021b7ea339590dc724
Date: Mon, 20 Jun 2022 15:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655737979

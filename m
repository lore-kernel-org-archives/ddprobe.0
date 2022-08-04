Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBF96AA4
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659649252;
	h=To:Subject:From:Message-Id:Date;
	bh=S7hEiiD1vpf4V7EwnTxte6Z76vhhlGIjq6x3V65xmZM=;
	b=k6R6xI4je9BmJxwwNFKmTkBYY8joLX2uyR6+bfgb+n1gNCaPVSb1MlIuxTw4btAh
	vzb2SiH+kshJ1GlYNP/sk8pRc1ya0H5paXDmVYH8wiBiNKOpZBNspoSFYX+6FhDkfWO
	Aqp7veVdlrZ9lK7Q4be/V50FA0B8MCExCr0lpfMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659649252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S7hEiiD1vpf4V7EwnTxte6Z76vhhlGIjq6x3V65xmZM=;
	b=MTULz/Fun4xUv3icvbBz24N/P1bRW521HalL9CsFlGn+MrEjUu5kRXUUYaKPZa4s
	NN+kuEha8oKhqc2k7dpjWD82S7k0aO5THeuYVt57RQLd5DAbL88Z2Yyrrg4w7jCh/bI
	WKN5u5KreET8HPeZYT/kx63DVFGC82mCs3Ap2tlE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826acddcd7-e05b4bd2-6243-4e88-bcd4-113bdb59ddc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46a0a15985ca518c337bd0c284fec46396f24a22d8f412ac3b5c3bfd43a134a3
Date: Thu, 4 Aug 2022 21:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659649252

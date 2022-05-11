Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9B728F7
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 20:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652301539;
	h=To:Subject:From:Message-Id:Date;
	bh=1r3nDegXJOeW8KAM9Yhmghd7AAIwKghaUq5qPCXpI7c=;
	b=Ei3qgEBjCK/E7M3AJtc8m05v/QJ3AyMEAK7kaH0adstaHi8SoH2rde2lGMjwuPyC
	O2ZtkaRvGz/f0UormJc4WyosbndJPQpWOOmqLiexgxz3YuF5jk/zpxcM+Rt3p09FU0o
	AVkg9c1T6LGWIIEr/q5urHyZbfTze448IUPu1ImQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652301539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1r3nDegXJOeW8KAM9Yhmghd7AAIwKghaUq5qPCXpI7c=;
	b=fBQ9XDgIpj4oC9nnwvzDEVOTlGQokwuxIVnoHkFAf1kNxBALLtTwgr+1iO8lLh9o
	OiqZOHuzcXb5pe3MwEqlgigYIrQrlWOejzGCd9Zkkl7ulyBOEWZqR5ySJe/5/XOro1j
	oM5go0Rrxvvzei9cVxEv5Z8eNSVTtippw3i4L2cI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b4d8a888-e5fd5b67-5cc4-4146-bfd1-70da9f1b398f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16cb20929b9cdf96f90500f4a381e9848cf2b696c63e17b0e913bd9fe2cda3f5
Date: Wed, 11 May 2022 20:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652301539

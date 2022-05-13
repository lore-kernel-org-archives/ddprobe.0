Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B3A210B
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 09:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652433839;
	h=To:Subject:From:Message-Id:Date;
	bh=wKs8ZhMzCTQ+9gIZBO34crR/1/aQzuh5NtK7SdWJ4us=;
	b=LZpw6wRU7pFDT955n6hAPJv3l7VWYYgoXZxlYpKQdyXAHFmEXmQ9BtRaj26iregu
	ZO+RwBnpSY3WliQpPb7JYbxAfYPHRjnRJHtHskhZNOpbFG1nNYIiszXBDVlMmOQd1Xc
	VyT+lPZJl5LJ8648Qi6+0l8n6kAx1C/kYHElAQks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652433839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wKs8ZhMzCTQ+9gIZBO34crR/1/aQzuh5NtK7SdWJ4us=;
	b=Iapp65ri5GbbgNqrx0+MR9+PoRCWHKdUaZSVhI2fYLuKg+3O4qjQILtE6NZ6iSoA
	0y5ieSnQ1BJ6KZGGn/0I8BkFHC4eMn7UdMd8L1iorQpTz5e/R1/rdeHPEvc06vr+4Cm
	gfSNBMHGqNtg5lzjCuUqUoWy4Q5Lm7yVxXDT0dsU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bcbb648f-89bbe929-043b-491a-95c5-55579a3f71f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 393a73f60b1fa6def7292f9e5ad84e8755999209cd3c932c5520e835f5f8288e
Date: Fri, 13 May 2022 09:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652433839

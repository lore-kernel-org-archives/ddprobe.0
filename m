Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A1C15A4
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 00:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656117412;
	h=To:Subject:From:Message-Id:Date;
	bh=E5q7Bhhz9BI71cUEQSt+nbz6vZodS5LZ+GMria9v9oM=;
	b=fNJKdRHKd5gZH8PW9tB5/KQXPZsI+pbRWuBB5JPIylYh1mCH5NrMROz3a8F6r4PQ
	AIPz9etRqEriVXaxJpgp05ClMw77sFtVKO1ErGuvDR7/WfgN5FT6L3wHJUi1cGWIYiz
	C9kvJjbA5TLgmXbFwlzy8MPS6M2c8GxMl9So5yIM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656117412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E5q7Bhhz9BI71cUEQSt+nbz6vZodS5LZ+GMria9v9oM=;
	b=F/CufDk4OFH/RpZ1Q8amGjpaoXCwCu2F4eeZx1FkbFaV5YCQG6syBRQOrhbPbLod
	rw8ArP+raAu8zcS2rJGR+Q9ryn+lenqg7SZ892ebg6DYHl6fDQrwSkdNAcQioekB7le
	+bdoyPvxMB4P7adi0Tz2yuBCXIPcMeQkcOVzYPUs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181984a41c9-f5d85fa1-b15a-4e05-b595-f4acff3506d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: daa5c836da2a6802401aeedb5439c211ae769fe61261c33b3c03d217473e1cd6
Date: Sat, 25 Jun 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656117412

Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188FE20E0
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 02:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652407379;
	h=To:Subject:From:Message-Id:Date;
	bh=r4QaFStvgXf+NTAnBF47M5jN1I52lQQ/mJ6tN9mfEi8=;
	b=SfPk4pZIzMQZpqvs/n2fwgMPywDh226dc0jOkDX0jhAPROB+oG0VTqoPvTvceSEj
	RcjRop2crxnnn9XtNx9dTbBV10yKTMbNnGnamO9z5fWde+/aDtLeALIDu5kxeT5WBwk
	H/3GN4Opcn19dhyHtSsa0I0CFdajQlH9uvCqQoZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652407379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r4QaFStvgXf+NTAnBF47M5jN1I52lQQ/mJ6tN9mfEi8=;
	b=QZCkJkC7BlkMZRWyH9P6ejIebSJpwLewZtjPelnuR4GE2hoybUqNcJabZhJkmsn+
	Kgpj6kpJ3uV4bPfuo9MwY5rrtqOcn5f5P331H74MhO6vP0FySSG1OwzdWFu8l5or/l6
	B0rUjGpPpCm/LEXTZ2TzgIYeOxbXY1oBbetF8uDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bb27a597-2865a4ba-2d5a-43c6-8f56-6c2a7fb05e1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0984985136a363afafe9a242f9e3440f16a7145d218822ca0963ad25a36cce90
Date: Fri, 13 May 2022 02:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652407379

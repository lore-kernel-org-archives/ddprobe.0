Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872981864
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 19:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653593939;
	h=To:Subject:From:Message-Id:Date;
	bh=lOfQrt1eotySRP18zrUlECLCqV32xg4SVgLG0hX2z5Q=;
	b=OUz/yqHpmxcNw8N9R7nsDq6kJDhffuHUA34W8pG6KUWWWXcsqARYj7uwM7AqtxN+
	9rQGK6JJqkaNDVVap1+SlcaHECcvBJd4XFdNSQzIBI6AWKhPTYzbEV1Zwx7TD8grq1O
	jd6UVU2aUSt95f6/XfGR/f2RCz25HpPc1iqzzrN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653593939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lOfQrt1eotySRP18zrUlECLCqV32xg4SVgLG0hX2z5Q=;
	b=kD9BwV3YPG5PO0SzcVb9kaOcarYNalqqZyygk78N/NvZGZeHwCeNWszO8E6X2L0p
	sDKBayGqk+BiO6CuPtrCEkUMiZtq9GW0/dWMwtrNDuyx0b8MrWgFoWRM8Dealhq/u7U
	Y6vqsxQEfAkSTHoEQT/8/Gztha766A5BKfhE9RLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018101e11d63-160ce5ad-a7ee-4f4b-93a0-1ebc152a626e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a45bdf65ad4c4b267286d7dff64c7582986c47322f109a6694ea09c4f6dec896
Date: Thu, 26 May 2022 19:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653593939

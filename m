Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD847C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656223012;
	h=To:Subject:From:Message-Id:Date;
	bh=aewxdLXrSZHmrwyEBI3KIEqaz5ihAoFiY2f0zQZmDNU=;
	b=L6poi+wf8nFDXCfwt0Dw0QM4DgDWlqStb5UNu4V5O+23/JEM8g4Ro/8vfqbcCUdV
	HyBC+XU6WrqZwbBpPp35LiSL8qCgO4HKs0kSPbB2XCY/r5wSfDUfBHop922PWcynSXh
	M+mPE2hcZfLhN1lsVX/9ZW/HQijiPI9jjEiX6LeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656223012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aewxdLXrSZHmrwyEBI3KIEqaz5ihAoFiY2f0zQZmDNU=;
	b=JtxparWDT0c+suUe/Wuwqhi2HYDSp5AcAqVgwif8z8B0IE8Jrf+vNbNtgqQDffq9
	e9yGMoBpaeQ8joQ56UUnh/RV2WBwQEO0ov6pXdG0GYEH5pZvXKQcVuzz33RPnCuzH4K
	Y77X9TpcpE+hHqjvZ5QsB8VF9LaqBNnGAJnyWSsU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819e9595c2-0ded3a98-e772-4e2e-8da6-681fc7edbec0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9195a5a3f5afa0876537d33f4879d9abf6614665086cb2450010bea66861c27d
Date: Sun, 26 Jun 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656223012

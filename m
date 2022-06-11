Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E607C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 04:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654922999;
	h=To:Subject:From:Message-Id:Date;
	bh=pIWmOhTja00arxNbjUZEYWG8zGHVqEOOqT94JFCRN/Q=;
	b=MGpY5pTNruWnDr0SYVZTtJmMMHaIZhS8EbOL5BIhZM3aZ+Dkkk+QC/5TMcj92yqP
	ssTJ/NUKsRnnEbJzrEyN43BtdTlVmTd9x2Yog+VRmuFK60cUBV7mSVTC9zpN7hKZJ76
	0JOleGoqz5jtO079pHQuvI/JXhckSoqcvhVvQErE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654922999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pIWmOhTja00arxNbjUZEYWG8zGHVqEOOqT94JFCRN/Q=;
	b=gPBioKsuKeLBXSWaBGYSbhiFt7DCvoHf/tpovwvEMPy/Qt2OTHI816/qrTP+l5EU
	XJi5AFQgsrkMe2k6WdyI4pBi9dnVPyDz7r6JIujk4AnvhJS0i2yCEigzQxtewXu8g8X
	uDNsujky2lBLDG75VpwWL83j7o7N/Csece3kh25U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815118f602-4586647c-94fc-4519-b386-3929009ff418-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e35691c4513320046d459d0fac851526fcd66867a083ff02e7acb33ee139388
Date: Sat, 11 Jun 2022 04:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654922999

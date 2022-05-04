Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDB02101
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 07:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651648318;
	h=To:Subject:From:Message-Id:Date;
	bh=2TOr4jy3hMHv98UyOHEBkj1ePCeyqwpbDpaEr+UzO1M=;
	b=lBCJFC6s9SYy010CD2fXGq3fod1bWTFZkCYZTMr1PSKrIlIUAZxZ0CsimkWJFfpk
	RE/OJUYYtGyad5WOYhORqbzi5PRds2ZJHfCFRGatp+qWl93yUyQiA91DfWAikq5jNrY
	OTRTLfj5Vqnv6Icgh/vtzphbhNEnXqMaxFYbXCsA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651648318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2TOr4jy3hMHv98UyOHEBkj1ePCeyqwpbDpaEr+UzO1M=;
	b=VunHOJY10955/QivyTJNvCV3lKCSoAwXd1UNHqpCsQECn2HOAtmVGRCt7RQpVUMv
	uevAj5qKWRoyKNgUybQ490bGd5b4SuLAGfg0TEO5H67CVsUJtj9K07UC+ij/PULyIW2
	dMk6cr2HF3lQRqOHNiLCYvtJcavlQw47eg2uQaSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808de94b56-29942d23-dd67-4913-a9a5-67a34662369f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1e799df25e76d61b3bba4b75e3caf8c5e9cbdc1b62acbd1332be0d8062b98a1
Date: Wed, 4 May 2022 07:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651648318

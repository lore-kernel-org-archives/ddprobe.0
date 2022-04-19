Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094817A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 06:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650350878;
	h=To:Subject:From:Message-Id:Date;
	bh=8pMakrioRMgjaQx6q1T4HTZlrxW/1mLRGK1Lx/3Lakw=;
	b=b6K5dX+wKurLmcFoSYcyBvG9hITTlfJWjTYNK3HeZolUaaoNFq8+82ci94ExRfls
	pOzBhszPrsgHk+GlBifbN7CUtv+NACsKr7uGNgZsIZY0l1zPjH7635DCmJJsNJe8OOp
	MR4YBzUyKGW2RE2wuV1FLWPzlpO9JOTPHqpx6Vic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650350878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8pMakrioRMgjaQx6q1T4HTZlrxW/1mLRGK1Lx/3Lakw=;
	b=Y05hLANTar/bdqEkAkJj/uYUmXiNe8fr1kE36G9QKViOt1tohA2EAsQe/IwmmgFn
	RxyMx4O0p3/6RN/apGQCqy1jyefao8yApM918Km2NbzfCKHAW7meyTQMqbxPZ1DW64A
	MBVNecKV8AIWNH+OsleZ2DFP0QKI/x6tb4gUspOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804093ee39-602ab35c-de92-4df5-8644-987d2f5afaec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 807a59a706bcb845d34adcf1ddc01fd892c565315aa12c9c9de8cccc54fdc2c2
Date: Tue, 19 Apr 2022 06:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650350878

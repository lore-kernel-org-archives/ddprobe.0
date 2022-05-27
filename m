Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BF11FA5
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 16:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653667319;
	h=To:Subject:From:Message-Id:Date;
	bh=hWco8c2K4t9sAU0xuZEdDk05923M8l0T0M5ONzgxZqQ=;
	b=d596I5Sb5QqxWx4SErxQ+JNGvOCNFUh8JkYgtrAB9mEbZ56qTsWYKsU9Fuw1RKs2
	SfqO/zMoHywJBofgD46tgb/hj8suTftzCMupzpS6L8kdS1H2SiTNNH02B6D5Hxe01fk
	mXQrGlbCOP0CopHO2mPVyDxFNb8psGitw+UuP/YM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653667319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hWco8c2K4t9sAU0xuZEdDk05923M8l0T0M5ONzgxZqQ=;
	b=Y1itxPylUznvDzIIl4T3X12rd9M7tU9cdgbG7JB9s7XVip5D8xlVjDNk7ElJPbmk
	UPvOFBjUYEFnH9sM6fj0Lzg1gjHxMfNzNEVFOgXtrO8ckbBpmmqUSCHaLA5d4p9gkxP
	pFQMJ7BuwAIdQA1YyiSamMXdP0zgg7621CrrOgNg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810640cdc0-52aaa4b3-00ab-4f5f-b855-e9eb520cfc23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c396c019e079ee0eeadcb020e8acdf4f6b2087fa79b72c2b53f7b036762a2e8
Date: Fri, 27 May 2022 16:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653667319

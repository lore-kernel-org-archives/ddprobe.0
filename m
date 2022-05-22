Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502CC19B
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 04:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653194999;
	h=To:Subject:From:Message-Id:Date;
	bh=niXiXXf4PYH1TQ2cmg4NznkibKjAn8ylTNl5Pnpi3m0=;
	b=e+n2UTkoxGJFueHAyyoAkZOOiMcpMl57Sth2NR2r3cFFisfiI8drlZUDa82V9prU
	QaXI2I8KXzOzySkcagy4dPhT2wraLCfNJzvrfiKBxzdfNEkyKY4WsBKNZSBXvBz2Rp/
	tZRVdufnoYkrfeiVnNJyHc0CAVZ1DPlD6pixEZJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653194999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=niXiXXf4PYH1TQ2cmg4NznkibKjAn8ylTNl5Pnpi3m0=;
	b=iYs/BAZaSuUypxL/VoPaoURN9vXbzY/LPgq60BpwMpV2SftaJZKdoSX5d6MpJ+D5
	4yqP5UBuBi4fTiBhvFTTooilMNNez0E0OKCXdA+z/ikvF3LapTFwJ9WqAwHVYO6DqUA
	tWiIUSCjBVGpSHhs9o85F8D5pdMoQlDE44XhX590=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ea19c5f0-b8f7d587-c166-4091-8cb1-b1ad9bcf042d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d9959df50c18996c0e84482e3403e908bc9e54f039de767ff4d6d184630d85f
Date: Sun, 22 May 2022 04:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653194999

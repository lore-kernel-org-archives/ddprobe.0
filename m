Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29278362
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 05:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654840379;
	h=To:Subject:From:Message-Id:Date;
	bh=+Yy499+bQyxr2j4ewEn7fE9B3ZX2HVe0Mb57lwBCqps=;
	b=f3JESdcuu9cY0l3epNtpFR3kKR7UI5X2/FxNhzSNg2955eyePUpdXzAwY630cV/i
	sH15ND6bMCYdSmquiniNdHMOcbDt8HvZCQxDCfKQXoqmFfBRdLQI6PFxxFNrc7SERGr
	VCrbW/0WCDo5NcWacuV0DB0LKHYM/OBdMKjPOJrk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654840379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Yy499+bQyxr2j4ewEn7fE9B3ZX2HVe0Mb57lwBCqps=;
	b=DJROmMQCQLhRP50riscBK/rYMxD1gH9CBIIwk3gZubzPVAhHx2zTxwto78O/Td6c
	8Y3DEo3kMmrmB5Wqu9c6iOb0b03S/BFCNCPbPdm3LRd9swTmLdjMO55o4nBoVz/iUdL
	NqgxnwiYJ7vGDXpHEn7kEW6/pDoQXhJUMMDkkDaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814c2c478c-25bf3c28-4b0a-4c14-ae81-c35c3b15c1d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a23cfe693182df7ee4c2230c722c3b9f85a250e9f90016051f2a116c7576d3c
Date: Fri, 10 Jun 2022 05:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654840379

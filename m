Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B3E7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 12:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648124278;
	h=To:Subject:From:Message-Id:Date;
	bh=ylFPbZ3EP36p7O0u52VGduin0uCLDJBseCwvCsXYr1E=;
	b=QbnRh3Md8f4s7o+QL/1c4FAZ8li1dn5LJlRXw1Sp8GPTbxHVNxFKwxvFuPWHZXXM
	uVNAM0ii5zZQ/hJf/7Pu4LCkctN4kn5p4mPSgaM518ZRMpHJ9Fp7HJ0Zox0hQjQaecq
	rIEetTRjsDzRUy1j6ufZQSow+95o+qvKWHxY5wMQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648124278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ylFPbZ3EP36p7O0u52VGduin0uCLDJBseCwvCsXYr1E=;
	b=FjchLJE7pc3le2G4Q55jBqC1R5ihhDlmPnAwr32aZROAqMGq4yJFBsvVGqZo70V0
	44Am83ZTRElVjIqk4uJRczBQbSK7tRvmgMWswQ6TNqyBJxp9BBleywb6KISKvyI0Jig
	dC5vUK8Th+UnV55FwLeLorSTMMj0zR/9Dz4TAruE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbbdcb5f1-7acc3865-d386-4407-ab55-bbda3c4d1c52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c44e9630ecabacac4a39dfd1835b530e2ce12fbad546d7fbfc784de7f33806c1
Date: Thu, 24 Mar 2022 12:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648124278

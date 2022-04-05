Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F4E15C5
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 12:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649162038;
	h=To:Subject:From:Message-Id:Date;
	bh=5nqabHCl4YIeeStreGi9LrcxRR9nzKUcjLVsy4lJApU=;
	b=HDrM6tMB0/qKYre1CpNeTDM+uaXwku9EGiAMiIfEudXBqRU8m6K8vm1MBV4NPtiT
	i6ZFYLoLaYHIMf6p5bMxxMGdIz5n52ce/r6s+Ea8PZw5u3+Ke9XQ7qt1CkpCKfyUIEC
	3AIFN84NtxoE+51L4P7Kt6CdJpRlfUvTCjaZXkfU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649162038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5nqabHCl4YIeeStreGi9LrcxRR9nzKUcjLVsy4lJApU=;
	b=GZjOUEj8QtHAebe7IvjkTPaGAq9vkSFuc2RfAvorBIG0wD5p9ymmjWTsqzcqCesm
	roLF8sLJ6sJqinqIg4ntCNOF1Z4rFVsAIplxhy+lCr2oivv6x1m4kyP/Xw24ajPIm9K
	MFqPmkmUEjzi6H/TzHayPnF3aDhgo5gbdoiVk85A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff9b7abdf-388a3af3-6f8a-4a71-b4c4-9817c7878b28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2c33f19ccb67d6168a26764189cd69a4944c3588831fa430d327ff202e29040
Date: Tue, 5 Apr 2022 12:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649162038

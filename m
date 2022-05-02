Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95E717D3
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 12:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651494358;
	h=To:Subject:From:Message-Id:Date;
	bh=Skp1KfHtPLF/ejhsH2uOu7kcMJSC7NCqrEs1e24uKEM=;
	b=Ey14qKCYgEbXUpvrQj4UuQ05uUvjd5CV2BMmiE8UaPrx9cJnEzTrEY+Fyr+atsPI
	dY5LD8mohTX25WDjteRWrBzM77sJX41fz9/dxWmhr7uDWM3zTdAUaQ4PB48HILSzZ3S
	I8zDJbyhxbHgoRP4Dqoj9quGWl4y/MA9nZyJ00sc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651494358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Skp1KfHtPLF/ejhsH2uOu7kcMJSC7NCqrEs1e24uKEM=;
	b=NH4R8IYBnN/1LZwzYsGrGWDQIKXz9w6bZ+fFT9B7SM7YNH8lWknDVR2EnTVf/yVR
	bLKXBVWo/EbLcO4eRFy27LNZdhyfDhm2TqaYcDVOOtbCNr4m8ccG/IL7cskU+8QoZPE
	Rpjm+zVO1JIgMOukcj2PgFIGlaRQRR4581JRgNtQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018084bc0d1e-b0770121-cd5a-4fb6-9f0e-ca426df40bdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee4710a894c7c24449adec7c36ddf971983c3cfeeb211de69b8ea8d824a5b1d6
Date: Mon, 2 May 2022 12:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651494358

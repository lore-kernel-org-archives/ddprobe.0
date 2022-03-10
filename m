Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686907A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646889684;
	h=To:Subject:From:Message-Id:Date;
	bh=NziPLUJarhX08O0PTE6tMNRyP4cBv95VuA1DziVM9UI=;
	b=RthMa5Xy4UNv7DsFwycM2I6zhY44QjgtV/x1Evp805btFUDg+dvHMLPiJFLjfX9q
	hNEBVPjMd8uVNEAkSzHPdJLk9X3XZ7snqMW/2Qn4eCwjtQZXmFfs9wgTOFi9JjYLNRM
	kR8pYo66zmRIpcgL1kCmjQUO0z7U6+YOtP28/2P0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646889684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NziPLUJarhX08O0PTE6tMNRyP4cBv95VuA1DziVM9UI=;
	b=lKIZrF7WZJLINs7H4sy0uCcWVWTZxJ2G9qGA62lFHRf7giQmLxFk/zeN8bP6WeEk
	/BpuN6qWYkJD2tIcdQcjDJYnL7yqiE9N2ow1KmNLQM4Bqpmm4OStg+76faqQnqNB1Zq
	qQSaeeqNOfLOZqezGjM8fZP5jQwWiKPe43QezjKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f72464f28-40109569-7648-4797-b976-70d914faba72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a0bdf26108a5f135ef12d086cee32d4110f0c61915234ea353b8c2a110a9c64
Date: Thu, 10 Mar 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646889684

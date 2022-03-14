Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93EF27E
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647245485;
	h=To:Subject:From:Message-Id:Date;
	bh=82O4XfxjBsxWEEgPhhfhcNSuOUvtQojWfwiCrbwE67Y=;
	b=IwRvE/s6ZMe2DqWQ81TDc+TvmbiiezTS6peqA8MBuCuPrTTevTFv5DvRa34vQaDs
	aDvbsrR1ZwAvJDUdu9s7JyTvolJrZvwN4VeVlyb6SF32p2DPl41PQE4WXStM/N3EQkh
	Qr4+nXnkyVSd34NP2iBxaQa+xJcKc2/8j+PqXaWI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647245485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=82O4XfxjBsxWEEgPhhfhcNSuOUvtQojWfwiCrbwE67Y=;
	b=kAhwXiDphXy3NNtTrlxUHlb9BC3ldaRyTYntbd92utYUqHnIsemFhz+vx3jjfyaH
	slqTxqZwuTDyekymy1RU1pNK9J/Pjy+R1Wk6ap41J1fALZB6XKB2mFZIrLDs1ABwEim
	9plTVFviObNhf4ca1L4oSo200Y8yFoPNFJlGa3wA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f877b6335-0777c698-ae50-4ba3-b667-e93c0cfea2d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a4ad0eab156e570d8e7c863bd36bcfb6100b75c39fcc29d104466acbf2172c4
Date: Mon, 14 Mar 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647245484

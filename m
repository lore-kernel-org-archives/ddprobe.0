Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE2187E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 20:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658608012;
	h=To:Subject:From:Message-Id:Date;
	bh=0LiSVMkhK/UyUDtqMEjHT848arb/RfpDD4M9JAVEMOE=;
	b=XByQc7lPojbtwj8/TPRNSkzlzPLGRqr7/WDhTNwJaaJaWGUzaUHzLhPUymGergy/
	YsCnoQsrmGHvqR1ujAK/FIS0su43hP9KG6gOUAvHLWb5IBmKWza80nsGONxVWe3EMd2
	zho5gMnLFd6nKkiUxpMI/5y0VjpVWcpkULMSEdCc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658608012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0LiSVMkhK/UyUDtqMEjHT848arb/RfpDD4M9JAVEMOE=;
	b=TzoViNH/nXGwDrIhaE3R7atHqxNSeZKYfr9da3YmICgnZyWP4waHTD4lz/8cvHT2
	KBgir1ibqryLn8GP3yrV6RhQo4Yse+VXHS9Z8RlT6PKC8qmc469gzpxUU7EqPCYMGye
	NHoZaK4f1uJxwhJzioFVNC3eprWHNV4CB1/egglo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822cbdcbfd-5cae0e8f-dbd4-4206-8d0d-e037862a6928-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be968f09e8961aa36ae2f5637c4438f126e5db81600c1bea535fe3ce9406569c
Date: Sat, 23 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658608012

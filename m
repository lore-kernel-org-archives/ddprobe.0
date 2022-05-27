Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7310A7C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 05:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653629699;
	h=To:Subject:From:Message-Id:Date;
	bh=U1BW+2R1cEIIuKUXIfjUtjpv6G2/QYIrMKlhWtJ0Kms=;
	b=dttxZSbALfU0jaF6wNp++2JBW1JnppSXipbI/uK/NrRLQ+DAzvTmtOwfeJfaFq2u
	dAncfuEtYsFmxHosevqbu+74Zp1YIngyhkA/HRsevSjkl8uBevv7NZF8m8Ft6m2JUll
	Nb5Erbd9R7InXznrVo90EWMjcQOkBRKIco2smom4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653629699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U1BW+2R1cEIIuKUXIfjUtjpv6G2/QYIrMKlhWtJ0Kms=;
	b=JCLjEHF6w258KHRBFoH1ZdtIY+itVFBH9b223bveIi/5TnCIofuiZaZYgY7gA2ue
	2Vu7fE4hwLjqGme7P4FWUQEIpyOIhoXgriIhzbB6LCtfKn5XxeMU3Fbl19MqQKysXBZ
	N1iIhsxTd25dtHT+Vlr2NKbNl5Ad0WzEJs9F1lqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810402c4a5-7b3eb08e-dabb-484e-b898-2f738fcf1b30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 940eb9c40005fc25bdabc63011a298abe11d404b0db9b65bb1513b92ac2c4221
Date: Fri, 27 May 2022 05:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653629699

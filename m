Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2ED7B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 01:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655687939;
	h=To:Subject:From:Message-Id:Date;
	bh=gT43kLY4BIa90jAIPzd1+wa/azPtKAN8lw1T36P7HKk=;
	b=ZOy3xzL4C1NFDjfO/x7y+Cmisv5GCV6Sb9eXF+sn6e0lMgaB80/9yVAnAUFEQQ2G
	wl8K4b/3GB87kKTQAm/BU9ui+VSS30OeEsq42egDJMX0SHqmW6xsqsVx3bxfOBaQCAZ
	i/wj47NTzx23ZiUDNwGsPrxCK6birI0iwtqG8840=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655687939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gT43kLY4BIa90jAIPzd1+wa/azPtKAN8lw1T36P7HKk=;
	b=EMNFwCsCqZlP4D97ABPrT6CLiPv6jE7/Zsy5BLJ6CpnYBdfCjFrYNMn7wHX5yud+
	hhMn1TaRi0CNOGXG2gM3HaIXoIyRYHq91nkDcpvegKYwV90SASVUA0yc/fRNQHqFB9s
	RJ/nh9n8NuxPrnuM0hxbf60CWz4B47Cp4J7QVlr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817eb104fc-8b155b00-6cc4-41ad-bb7e-7dfc1dfea30a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fb855cb23f7bff83ffc2b2db4d34af2ae6565c94c9298a2a1dd13973a58ccd8
Date: Mon, 20 Jun 2022 01:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655687938

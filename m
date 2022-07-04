Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61457E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 18:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656958012;
	h=To:Subject:From:Message-Id:Date;
	bh=x1ClAQt7VIrqkBhQnwfYDTMsmnE5IV7ZPWijY1o+CKc=;
	b=G+UZjdXwfnmwux0pLl0VD67nM9Ibho4CUOV7Ut7knp+nUqh0Q0o1XHeUaBSWf3lO
	7xFFEUmWJxUq1XjiBLmnGPWmk1JDc6gXOXB5gzTKXt6Il12lmV2HjyCythzRqjHLZz6
	4QNzu7g2GgaExtGbsrfFs2N5foG3y4SVX2TPddkw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656958012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x1ClAQt7VIrqkBhQnwfYDTMsmnE5IV7ZPWijY1o+CKc=;
	b=WBNTR76k/X1MeVSzcZ/n8mtdIyfir4RpeWRc0iJzON39vxqie/rHqnrCn6N7SnKJ
	XI6cuuCVAqALOcBnz64qjUZrUBPNqH3mqWO/q3OYxxfHH2lgvVeI8RtbtG+Wec8oHjq
	SaPsBKO3S48HEERrUsco6R+5Kj7xUDp3wWcd0OgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca64cb79-36e58038-c13f-4c68-81ec-05e9edf11cda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74277012102a3ad0944b2874872a268d62f3e9f5af58eb38cce14daf3bdc6a1d
Date: Mon, 4 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656958012

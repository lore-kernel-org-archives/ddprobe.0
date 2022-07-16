Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC9F7A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 13:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657978614;
	h=To:Subject:From:Message-Id:Date;
	bh=lLhfgdQNm99Q71+m7whaTtDXaOQMljODg3X6gQ9I6ZM=;
	b=KtXChqjAioY0n114It28TlcLQYQSxCt0E554CXfGFlDRahnK29lotwupB7JLRmRb
	IDJT5JZPPWg78ndQo+sG+ta6Jlm2BTg2MMW9ZWfmyRcUuQaKfPpkBYngytZC1dTbf7a
	Gb7RJO1mvFgdW7lzdVAbM4SnthHYvIn8oGyi6EuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657978614;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lLhfgdQNm99Q71+m7whaTtDXaOQMljODg3X6gQ9I6ZM=;
	b=QmmeclkYfX32cRjVvtkUtJd04iqyjVJwdP+HlX3LZDmzVCDI0c1W+cCDUMYpPfNh
	JCLrGepaRxNzg6ZOgi9WFhVRK08PJr9g5D/em3qno1ycATkaos6S7k/vy3mnb9Mr1/n
	QLn+irwIMOhotJ+KbjpmJDVyCitBkst5f5re9p5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820739eadd-77b08437-71e1-486f-9485-4f30ffa0d372-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a59681f18163fa8819e3deaa2b7dc53abf9a88fa9b9b92ac08d0e39c8a0bfe73
Date: Sat, 16 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657978612

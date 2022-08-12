Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E72236C
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660270252;
	h=To:Subject:From:Message-Id:Date;
	bh=gmDYvZzcxyrlfVN82G57DSqTo2MtBkXsp1+enVhFLws=;
	b=E+y+5yiKLgeDJ+PhxJBNS9l/KCR3aVjiElTsqdFV8BEJ7C/DPJzxQHoCmuhPZEtC
	EtEwAb7g5qVJ45Y2UZ89M5moRlq4jLL3rAfGl3EVCtFO1YiPiG1zhBpXTvLzdcpwmiY
	ULnwCNfn7HUxuJKpW8Z6kFmcPFd6c20cMwTY03t8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660270252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gmDYvZzcxyrlfVN82G57DSqTo2MtBkXsp1+enVhFLws=;
	b=Kus0VUCs+Y9CyXRtqDRzzvd0pPfyC7T/7e3tepROFF6ZMtfQ95fh0SClPotvke3R
	4i7Jj2kfW9B4PheAslju8IfpwCc/E31viEsFA/7hfvpfwovEDzG3pQ6+bGUnpJCJutx
	INcAD+Z0XBhK7DBzLqU2ILrTNF0DJA9LU5uTT2SM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828fd19202-ec1cfcf8-c369-4f47-861b-fd422f4c55a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0d8b013ffd62b4ab637d7a1cc209a1f07f4cfc40487f3131d71d0fdcc3e37cc
Date: Fri, 12 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660270252

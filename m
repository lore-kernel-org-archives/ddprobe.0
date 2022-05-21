Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E417928F9
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 12:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653137399;
	h=To:Subject:From:Message-Id:Date;
	bh=RBGzmst3UwU/g1Z/ZGrQyb8UNPLI/4frynavSnRDvo8=;
	b=B7P5/MmNFl28gf6PbQMQ3d/GYlkRpmmOGm3CKOip6bFCSAw6A6oSvaqsD24DQi8j
	YKIOFio4DoxxBUtIriPjTkZ9jd/qwM8tKzw9bGjM1K59lDz+8/VIayS4EOL2/0BApxq
	qIZ9nZC1nROwIBbESL431rL75dhGc2A5DHToRwls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653137399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RBGzmst3UwU/g1Z/ZGrQyb8UNPLI/4frynavSnRDvo8=;
	b=eKB3hkW87Y88Iq+olRAwXAagVf/VSG5s5gDWsUNaIqxApZ0JAz79OHZmJ295eJhs
	iQW6ntwQY4QqiyJhcbi47cNc77+vkD5TKZwTw3VBrwAXyr+Feli20T0cpFT3JV3LRv+
	ZSnUJuTocBgW6QG97SpRkmttcWfN4/0MvWiiRcPA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e6aaddec-28264134-2f4e-496c-b93f-9ce6703bf1de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 301a846ec4bbae41ad0972baca33d4a022d865c7db99a4052590bf47f1a0a41f
Date: Sat, 21 May 2022 12:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653137399

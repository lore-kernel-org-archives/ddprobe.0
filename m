Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452885C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659295252;
	h=To:Subject:From:Message-Id:Date;
	bh=IrQkczB+rSUH8BO5c56q9+ipzsidDCAsfimP06K31a8=;
	b=TJCJ2qWnDlohQv+8mdnhQ7pBokyBshTtWxU/0riYr/9c1d2lBpYtZNGtx6v+vkrE
	7SJPEMB8q8HHMv85nWJrAxyPzqQjlONcsTD6+sl9ypthLCcnAO3nrfPx5xObu/4XAgN
	2pmAqH87Uqek8Sbb1aMc623o0zpwiZtiG3iKUl0I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659295252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IrQkczB+rSUH8BO5c56q9+ipzsidDCAsfimP06K31a8=;
	b=Wr//055pCpgUhyq3CYEeQ2iHJd5Yx5XSiibBPpPfCJQzIFtDbVhuFZboIo3BURbV
	BtlokB4I+QOlXyZDca7IqpyOMmOIHtyvwNz28Wgpp852d/7Q+GR1/Za4dkn7+SH8XND
	hT0pB6D2PJTrqE0bb34fOWOkupxyDWioNgmoDdTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018255b44035-62d8322b-f4df-43ac-ac9a-c91abd5957eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f24f1b0ba0d8ad274a0484f3cc699d1b05f1f93dcd8ee73cff0adfaa2e2a810
Date: Sun, 31 Jul 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659295252

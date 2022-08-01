Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D85627F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659319853;
	h=To:Subject:From:Message-Id:Date;
	bh=KfDRNqUmNmkaoeOJogUZSHOX/5LHU+i/DSH4rMEzqn8=;
	b=ljYuyFI6VaNoE5H4gWCP+vfI0AGM74YgMHcCr8eg1xtc4jciZ9OvTYqOw8fTRSMw
	M51MAlMGmo91tuj0IGQp1zXUB1T4Wo6sQdgNwSltqG8UuBtjQJnLQsMfzYLmDGP7l5N
	nRDjDnPUWNHudvrdPE+cPr+zn1Uzw06wXPqMZLpo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659319853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KfDRNqUmNmkaoeOJogUZSHOX/5LHU+i/DSH4rMEzqn8=;
	b=kMzJKKgUa/Rsmetsq/j7jcW8jTKsw1MG4ajddafHbb8FyuQ61gyBhQO0nVmd0mOp
	J9bd+my7VPAR6hreInWU7jOPo1o1II/cbwUlLJp6u/mqeXYg86XdCv6KY/JZd2y65zz
	h6WjwA0lNFYExbcDifDK3QIaAeSegV9BkbzlEh3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182572b9e16-ff9785b1-d983-49b2-9d59-47a091489bb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fe751cd1b310e74a2c7fc210a22e8fe57cbb9b8911052ae576357e6663fbfe1
Date: Mon, 1 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659319852

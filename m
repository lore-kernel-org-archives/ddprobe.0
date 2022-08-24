Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EFF7B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661319652;
	h=To:Subject:From:Message-Id:Date;
	bh=CJDJncAscrKfZKI7FCP7cyc+ETOahmS4oNOQsHPn3nM=;
	b=MfeIY0RlOnhpYTyJTFOAeEIuxs920g+jTsd0hOOaYgk/u/g7tgnRswxOB3KwiUSU
	fTyQcBfpcmGK7AsbBniVYqd74BKwzkuga3H1agsyjrv+XlQFEXt+xsHt/a9ZRZd3Rke
	UTTcSMpFUCgG8gPaTBSH5fyAmRDasAB10kQ89YW4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661319652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CJDJncAscrKfZKI7FCP7cyc+ETOahmS4oNOQsHPn3nM=;
	b=Nr0Xjf2JFQndx0mqmA+xeTL2AQxSfth1gq5wDRQd75pzMyJovJW16Vgl5Ig60UNn
	mUDw0yUwm2qdS1xWI/pbzkPNpzVKo+CAsbSaups3VUrF0ox17l/xeaJLOnX5i3CFK/d
	jOQcS0peME4yfsv5RncRyC7kjoNnZj0mFYtOI3qs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ce5e24b0-5e3afa34-ae5f-44fd-b3c9-37cb6ac454c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c00239628eabed7a02538429b2bbf48d65dc4b901d7f172501c9310a9d76f3b
Date: Wed, 24 Aug 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661319652

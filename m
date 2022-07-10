Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28B27A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 18:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657479412;
	h=To:Subject:From:Message-Id:Date;
	bh=SmWztmSUeF+4CaY9RuZYWRCXFGGzOdj76g19PiKeyrk=;
	b=CT+hN65FAYsAEd/ac2L6Mh100AijQgnXQmhvIsLDl64Ct6m2qoEeFsB1rh1qqpcx
	k0vuiQ4x7h5uIgXujEsLmCNDhAw6TJlA2GgInmS/eVsQs4hVxDUtHcSfJcTSWlhFv4W
	DI10VCO/7D8q3Mj3huG3I76TrEQqVQ+EX7CC2r0I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657479412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SmWztmSUeF+4CaY9RuZYWRCXFGGzOdj76g19PiKeyrk=;
	b=NlAgyOeaBsIyFV66FJOgJT0EgicQ6zJ6acSxwc/NHHrqcMcXJcYNfkOh544bHdDr
	c/r6Jas0WFHcHLxljDQczdVe/qf31a7ZRiYSJOnqv5ydWcfRC0U1AU75Bs75+UKM9XO
	cedd55GTcV9Vp7REAVCAiQ/8dmujD6xzZxbxp2X4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e978ba42-f02356ec-d631-4648-a1a2-a23b070bd4ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34fd3cf1ba2c8b11a1d881f81f43380f77f3308cdc5441116618f928ee0d7764
Date: Sun, 10 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657479412

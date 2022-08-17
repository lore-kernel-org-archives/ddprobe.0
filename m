Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B0D7B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660702252;
	h=To:Subject:From:Message-Id:Date;
	bh=qnbDzeNw+yG7Pksy0v1QlnOnXNDtBBP4VAd2t9JePcM=;
	b=LoyZr5+QHdhgNkNKvVehZe9JpIjj/Hz284l2qsbOKzUZlCBIBAJkpndVZc0aCDM5
	+RBI/xDZJkxjlfC6YmfRWZng/DMPsDJ9WsOli+gnI2kMitcvMQzhvc7nootMcrNyLHJ
	Vu3It3RXmsKTfl+osEN+84rc5e1wMbcSWSSaEy88=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660702252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qnbDzeNw+yG7Pksy0v1QlnOnXNDtBBP4VAd2t9JePcM=;
	b=Dv1+5Nj7UU6v83tzV9sZMyg3jZ4f++A2zdF2wCfgX3NEOlE3AasrbhuLXEcEnjm8
	4dt43P8xeArZbn040ciK/HiOxbRiNJXUeNCmdpQxob2eVg7byjc+zUjN2F0mj/VS8rt
	nA6jmmITi4Jh8Ff1XbFvVHaJyXX26a3gBYdHyAvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a9915e36-d2a77f20-55c8-4482-bbf6-c9218a484296-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b78f54aeabd009b8f3995ceb8c14060b5bb007dc4779bdf0fc6c68b94fd59a1b
Date: Wed, 17 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660702252

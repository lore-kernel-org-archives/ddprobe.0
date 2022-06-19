Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8187B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 16:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655655599;
	h=To:Subject:From:Message-Id:Date;
	bh=Zhu2EBnIF5/RC6oapwBs78QEBEZsVXRDE7Hs7Q74NUI=;
	b=IhijwSVAajs8s4EzDBJWJ+Xt8pJpt0dAuiJVCw7nI0zQXXhPfQJeyLhwBBVhD610
	QbamSvQ8yut1OP6GzfJb3UWgQB4Z6rxJnWcZ8QnWjx8NPTiYJmiS4l3FF9LgzKb0xqx
	IE0ynvjrnTW+YP2ffA8aAT83F3XpdGA8k4+9nkic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655655599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zhu2EBnIF5/RC6oapwBs78QEBEZsVXRDE7Hs7Q74NUI=;
	b=NeVUkPkL+ysnymEJ9TOoqFnzRgz9AglQjR2sGJCR7Xjp/ncwSmwH2dD8kqLzzgb6
	6FEgcmuPZquK+L03O2y7zypxMqSc40tUgMG/ZBao8l42W7PGVS3weHBzQDwv4citpgg
	W/R9/n3dgDaz7QpMCSGgLGw/utWFGZEo5YHvItf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817cc38c7a-21cb978c-e3c8-4c72-ace4-57a71a78e42e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25fc3937a8140e1be496d2c071be7f77d2e2b9e8773ed775f3b9f848b74978f4
Date: Sun, 19 Jun 2022 16:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655655598

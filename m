Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7593F7A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659859852;
	h=To:Subject:From:Message-Id:Date;
	bh=NP/jIdsj8fQqayqTqGeaPZkZbg0M9vUnJm3vBt9k8VU=;
	b=GpFNJXEC2H7l/gB+8prQWwDLuD96ShSmGfXpiOzgwqW/DjXzzsAMvrmw3bQ20/K+
	8DF7GjfaOMN1O/SygP+nbWAMTBSuk8aE5vnqtxXK59sYx2OlgmMqajWspF3NJCPqWRU
	U0UZ/nal444HJpjuZMe6Nw+6udkizGJjCkvFEteY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659859852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NP/jIdsj8fQqayqTqGeaPZkZbg0M9vUnJm3vBt9k8VU=;
	b=iP3gQMuRp/u6U083QCST3ndjS547dN8lIOOzwov1MhiRSFlcbDz/zV17szW8Zff+
	a0heHAzI3mKiz1a5PSNH5pi7B8cPXmN5KBtOWLfzJ+++Kgrv9xxqao7QZ8DqIfF8NEn
	nqtCbC6Og6xk1GQyCOlg5Vj8xIUZwWzu1bYlDrow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182775b5d28-45041c07-e284-461a-a18c-390b86ab0abf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57d27b7bad893411d06849b12c41542caf05b209e31636e0d6e06792143f8427
Date: Sun, 7 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659859852

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43382601C
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658862052;
	h=To:Subject:From:Message-Id:Date;
	bh=l9i/58+x/ZnuGljqc7tqpwKERtgzMdy/U2vtlPdEaXE=;
	b=VRDLlcC40l5u9xmwXt2R34xVQeHauplJQ8iohhXsMlgL6dKCRVfGYJandBLXJMLQ
	oZDNjhARsFBaEGHzuQXnDOun94wnINnzk7vB8+ekTfwkttmpQp1rIvENyKRSFg2CGnD
	3eDyMvbFMunOVjJCRq1p1O1+sioLPmKgHjJRQuO0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658862052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l9i/58+x/ZnuGljqc7tqpwKERtgzMdy/U2vtlPdEaXE=;
	b=HF01flZ3cl4yqd2pSTbU/b3WQyPdjMz3ZkR5S4EzhKqHmB/MFeR9XQlRHfDDCFFY
	2TAYye3nBPewmS2ra77nYiURgUzmwZu8xh3rfRggFzhoeX0TkeyQ8qqMM7GNCLquK4k
	vQxrFDEamjj0E1DA+b3q7hWY51PIsx0x9aWg08Fk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823be224cc-434eb630-9e48-4fb9-a80b-bfbf3d58f271-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 163a55beb14ca1131d339b62d7d002996ef0c3ec80114206132ec8bce347c6d0
Date: Tue, 26 Jul 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658862052

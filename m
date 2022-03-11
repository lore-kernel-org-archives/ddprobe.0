Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658C57E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646992884;
	h=To:Subject:From:Message-Id:Date;
	bh=gjHBxN3N3/IZ1SfOaHkaLmrE950HNLahc0D+iWEx7MI=;
	b=D+fnGtpsCuemmdurHBcjJM0y1Y4LemSDh4PC2kJZaGiFdrlx5eCG4TmtpxnEBqQa
	AsAP3BQkBwxLTN0fpmG4bpoSY/xvp9wcOBgkX2b+/UVLPKXrCiwYDHgN7QHPXwSP3Dr
	mEWSJiJh3NO6gJHs+0qU0Q9Dqb3/BdOj/H+NiV0w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646992884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gjHBxN3N3/IZ1SfOaHkaLmrE950HNLahc0D+iWEx7MI=;
	b=h5u4LLM5FjSzfFHvI5YSa4pvP/I0/bl3k1Jf1/3fwv0NLMn0Z4/AL7dazrhdcvaZ
	XSpJuH8T2lQEDlJAXEkZHf39dQw5V8Rt4Al/+zZVN5oDGx2h4Y2+gyiPRdZgXRABGf7
	OJtZ8Mp597pPaUx49/0DlqvkfNDaUqKSapok2J1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f786d03eb-3ea46bc6-cb35-4e8e-bcff-a55e16b94ce7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc21afb963af54b70c06db725868573bef755083809d389fbdb12c012029889a
Date: Fri, 11 Mar 2022 10:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646992884

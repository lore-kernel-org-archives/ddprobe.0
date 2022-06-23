Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081071876
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 12:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655986439;
	h=To:Subject:From:Message-Id:Date;
	bh=IFRbYjPYMVEo/8l2+bhlZF+u/nQMjEQfLJkMWma54wk=;
	b=ZBB9feHFX/chMR5gndSi5dLPC3J9FnkRAxzM4lIA9PrnjZ+QE1Qedd9cnVsXjQU9
	4DbRL5gJFhlmeHlatv6XjrP1XRPbapbftICbY1ft+johofJcmurBIGY7Yqz7P22nOyW
	DH9mPK215Q2SzgqIKqCY7N8B7b/EM17ZUiEEMp2Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655986439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IFRbYjPYMVEo/8l2+bhlZF+u/nQMjEQfLJkMWma54wk=;
	b=BMbpEeAJAPekAfeHkr//k5kWd1PQNDWl/1h0TxdadygQEz4KM5PZptawMNPu5CgK
	pQ7O9T36Y/IUkK/Gk6Kp5+1CFtWP/2QSEYOOsv/T+ZHO41nfI559ClUI9YF2xvGKm+a
	2m7dzFD+5aJnnrPxZy7SBDDq9/13csj9GBW7G0fQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181907bc439-10e1e60b-2986-4b19-b267-65216727ed50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cad3c51a4af590ea217cc38c2e7d00d6d82ea0c3761007e4ea52b07207ced23
Date: Thu, 23 Jun 2022 12:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655986439

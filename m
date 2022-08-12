Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E81846AB
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660329652;
	h=To:Subject:From:Message-Id:Date;
	bh=jwJwZn9ruJDEsR/n/NaJXit2YLGLdYvwt5Ok3c6lHy4=;
	b=kMLy3gL0ZmKFtzU/SKo5sdNRiV3jxNefCpQOpTevZQ6aU+x1EG/jKUQCuh2I5wme
	4tN+0pgy24UgtLGN4OYobzU5Yu0MXU2o5vfwfD2EF0nznDtTXsI5oYbt304RjXTT9WI
	FMdcLWtaPyjCX/63AR3X4Vs9ekLl7o9YgbqqnPHs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660329652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jwJwZn9ruJDEsR/n/NaJXit2YLGLdYvwt5Ok3c6lHy4=;
	b=QGMZdn/xvrGML7zaA+rkycog9aFSrJ/8UnouMGAXtS2sfWgkPyeg7Udvm/vnZ6Jq
	rOMobWphHGOv9jyPjfKV9lcA+goq9wG3k5lFPtWtXQXKJWlDutCXtZKYfyhNk44I6nm
	AjbMJozKJ59HAfFwCbbsE+1Ib+ui8+OSjNaiGNvE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182935bf15c-105e44a9-8aa3-45e1-9d7f-3b4fe12aa9ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1a85bef9644bac46447cb924ab212e4e6895dc821c39aa49b5815c18710b5d5
Date: Fri, 12 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660329652

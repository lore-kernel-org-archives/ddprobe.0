Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D286637
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 13:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653312959;
	h=To:Subject:From:Message-Id:Date;
	bh=jVlSxqI1YTmtOE3odcztQjn99npQJdR4fXiVXSS9Nb8=;
	b=fcPynjlzpYeRJ6qGw/ho6wNgcyc3nxTlafp4qp68LdH95TtE9zeEYwUumWg2n1rj
	WVwTTSgkpQRozwNEzkvLzbich2AjOc+Aan86SPtWXAjIJz9yWBc+vF2eeVGoDLPzuWd
	q1ubvT4P2eZS0ue8vD2lhp3PjAvYUZI0eiZ98sRk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653312959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jVlSxqI1YTmtOE3odcztQjn99npQJdR4fXiVXSS9Nb8=;
	b=PdvvJQ0M0A+ZaQPyomhbb50R0MHGYP4T03h7qohA8MfeINaCpmtuAB0ySf8Ynv6L
	m2QMUG0aAXYn2KuOfc2oATzT6FauTtPVIRLhs6htZEOrwPpBIYlv4pS8dn7cuB6oMJR
	RYEJzgckOSvXYN6XNBCvY6GY1sOdBIcUti9GH5q0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f121b355-d38f1e83-749c-43d8-9bc8-db6333898664-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d002aa9fb013be27f8af53157563486b5fa0892b45d4bc8b7a148dcb979a641
Date: Mon, 23 May 2022 13:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653312959

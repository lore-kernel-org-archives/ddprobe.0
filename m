Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4DD2917
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 19:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657050412;
	h=To:Subject:From:Message-Id:Date;
	bh=CxsOEWspDAkfBAwJkoYVUb0JDDEZp+8QccrjUFFAWA0=;
	b=FdFGqYD8J92Wel72LJiJ4rAHSY8TVdFfhoJGktqH34kgXOFgpwC0jXkX+FBV6KLU
	W+dg4TyAD6Qbe8zbmrK0hOFLjnp+W9Lyq65LprwCMTZlOuvDp2fHrNd2qHQbNi4D9fP
	p3VDXLYCJBsTjJr53XDA4+N5MUja36oyroMpEmAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657050412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CxsOEWspDAkfBAwJkoYVUb0JDDEZp+8QccrjUFFAWA0=;
	b=PzSPK/S2U4CfEi3yk+/UqUjriuz1E9P9EiRWL4/OhIUg6aqJahoJO8aCtRDtPMOm
	lFPBs6ZaNGw4//CQ6araTNODNtiAJA8Jc4GTQ5qaO4tCpIujPgF+PkxT518wdxxVVIq
	ufxK8kOtTkD1aMxNARU4mQkkDgPbWOaNfWYrQqkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cfe6b4f0-0646bbd9-1130-4e05-99c7-971eb49a8e6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a99a0b338ae911c081fc3e4f0a12f6c10a83facfa6063f5858068b68a6bffc5c
Date: Tue, 5 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657050412

Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A607E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658567212;
	h=To:Subject:From:Message-Id:Date;
	bh=x6FDiKaD+kZ/LVia3Xgfb0RPx1gmKgnJuWDHUJ31gc0=;
	b=O6FxeDHmhXpvA5wGneuxIbuBxzFw4906Yn7TTovHYBJtJD0U29UUzAi+GUkzBJBs
	Xs1r1dyoBuqnjNOd96W6kBf8/34wQcf9soE5O+3Cql0eVNVe+OZ0P4IlTZ14jbhbdJK
	H8bYwGQniQa0SkNRP3eqV+hIBbGelOkkjGL2p6T0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658567212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x6FDiKaD+kZ/LVia3Xgfb0RPx1gmKgnJuWDHUJ31gc0=;
	b=Rt0WuS2ZzUjeY3UPS1gn9gMKUMw6td8A/AtCorXQJoS4Ojs36zByJoiDADugh7RF
	yTXgcgOEXtRVqiWF/xsrZ6l+dUzK63j1yOwjvnGE3tGLlHsu6Qxn4QfLgshT0STNSHx
	0BWees8Ecsp/303+FGwXA+P4ghWjRWxKD81OXwvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822a4f3d02-c9e71691-d600-4963-af97-92cdf678897f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f35dd1acdbd1cc4ed7c74f5c275096dcfb4ca64b704c5bd8ef55de5065cff34d
Date: Sat, 23 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658567212

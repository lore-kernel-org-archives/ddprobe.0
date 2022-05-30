Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342F118D
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 14:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653921659;
	h=To:Subject:From:Message-Id:Date;
	bh=d3hKVudDOayk/OBREVOFY/laCrPMN7ZZtK3wRX4OgRw=;
	b=ZeJBBEzGUnsFl+sm3t9CknDLStHfYFOXqJmPhoEO/RtDDr/ASHjrfQLrMwTG4PPC
	pvxX1LRLNSvBA5Rti7hm6j5wob5Zc+NLRihj5/N80CyXw72yTnqBKccHCRKGlHI+ngz
	MuMRh9VphJdDL9gvtdBH+SGhdYJN0Tcma87dX0p0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653921659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d3hKVudDOayk/OBREVOFY/laCrPMN7ZZtK3wRX4OgRw=;
	b=SIBl9SvXs9LfCQqMnh4P9qGJ4a2HM5XjtXg0aBHS+N+7xn6r6YgwJ3Z4qp3Lw78q
	DARwpn9PSffIou8l681zpRNM3h+gj3fLwNVwQfZ4eWIMKQ1SI1tC471j0wYuUCLqxQS
	A58K0O+Nk9o3Z024uIkVNFL8jqr9BS0jU5edQim0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811569b996-0a0e1ddf-533b-45a1-9f94-b43147cb8fa1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fabfef3ff18cbac30af22cfeca838b2a1e2d35216c9c099cdf197db119d99393
Date: Mon, 30 May 2022 14:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653921659

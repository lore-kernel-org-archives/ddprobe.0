Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E23820EE
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660987252;
	h=To:Subject:From:Message-Id:Date;
	bh=0uiRukT2So44P+x6OeBHvtfakTv2aCxHD7b7aIetDNk=;
	b=c3ChO2/t0/+zGh9PdKnMcetOgXv6G5akCZZU4wQFmEgovso8uZLOeXtUz5E2H0fX
	7rH1itGE8026JbMr4VbPQN2huu/6RMSHcW2OKNeQK3tr4VDyY/mfhKk3v2/cVhB2mla
	GzTqWZRBNMHJtDrow2VWwmAE08H7lH7B3EtY9LFo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660987252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0uiRukT2So44P+x6OeBHvtfakTv2aCxHD7b7aIetDNk=;
	b=TmO+zZBaiF5WShaZTlrpwcZciDQ59roOo6p/v/L3KPxaTQePx1QeLad2KbDwb1RZ
	2mkwieWsbq7ztkCPlUNvRixDcGqcDG53nsv+fHxGB0yM7BtwB2aLDq67KfBDOQIN9ne
	yDd+dpaM6cLC7no4HBVpvBHIvx9659F0LDLzAQvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ba8e1f77-08b26e83-ea5d-44c3-b627-3eb0c34282d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e101287c429298ec204f34b9d3a3804c4ef62deaaac5b44c33a434c6cd664db7
Date: Sat, 20 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660987252

Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222BE28E2
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 17:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655746799;
	h=To:Subject:From:Message-Id:Date;
	bh=JvTHe3MFvJs7ByI7AaCCpxQveWUNH4AsgVMsZPt9RY8=;
	b=DvAHRJYgRlKXtpoG4m5vPQGbFE/EKjWtUru7VgZ43iaelIzUV3XKgG+73a8WtwM9
	CE5BmjeUTAqhXY7DBsgdXeOMYrcg5CLvgRIaXT/ypab1gxEWiZjHuPj8AbglLwmVeeL
	cSAUogUn6jE1tZsouG8NwgRKHbAONTpYDnJGhhnA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655746799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JvTHe3MFvJs7ByI7AaCCpxQveWUNH4AsgVMsZPt9RY8=;
	b=FwW+IUKT8Eu3daadTTbHhlYvve5qmHqRBdqqGdgKAXUMN7lZqHfAxgySFScrSXTG
	QHM4d6/zv+ijwFhmE4eb1Y7S9CRSkRQoJ7EMDi5YKPjqopynQn6T7xzSxojGNMYJAzw
	pp4duUuty85ajiJZ2UtAVjhZGZCS/x0Fb1POfx6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018182332676-ab5c94e2-a36f-4585-9c07-48559882f643-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e114bcb88c456164cebaa3c4b16cf934b1dbb6badd8a14caa11a32d808238e2e
Date: Mon, 20 Jun 2022 17:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655746799

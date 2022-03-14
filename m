Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D7F36AD9
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647292885;
	h=To:Subject:From:Message-Id:Date;
	bh=LHIZPCtnvZ+O48hx30s4BviDvTKGrUMAFl8X3ngua+g=;
	b=d6DY5Q3cDmQHIi1hvqww9sGUgKuycJrLSBg7f9j89pPaJst+twimy36E0Yj58xS3
	ynGvhclpnr4Ucy/SMoB6CghV8j46/D8qAL06vxYgt/NTyjUXfwpN6MM2WUH834Q6Thx
	7a3DzRr5FewoNyuyX3QUE0jYw84YuCZ0eGplK6L0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647292885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LHIZPCtnvZ+O48hx30s4BviDvTKGrUMAFl8X3ngua+g=;
	b=bvw0OMuOI/7GWvtlhPDRVFiXgXZdHWfkIxjeefipe9244TMm8uyojgA1ffZ0/AO7
	LmGAPPbLAZCrYUhJyQazLpee9j/1G7lYFZbFeC5OG+N/rdswSZtAqRr7Y65ebh11gFh
	dIX02fpnt3UhdZihc/OItcALGCyOVY2soY2fvWzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a4ea73a-78c096ac-4939-42f8-abf1-87c668a32322-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d61cd9d484335ee2e3c3fdf360b506f5b0a4b95deccf6a8a8a2c5c2a9182d64a
Date: Mon, 14 Mar 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647292884

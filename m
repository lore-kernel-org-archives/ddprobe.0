Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98EF7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 12:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655640299;
	h=To:Subject:From:Message-Id:Date;
	bh=2Pd6aiVcG+IfYMoE/wxBZwmqMeJURuqOnT7BV7tp87s=;
	b=G7FW0T2thWvXfHobP+LhuI3jT9fZgrlFsoyqONOk11+/C/igTChCS6+/QpwKxHvH
	13QNE5kzr3BK/YpRiLLx/1oSLA82q5bdMlMVXduKixcsjGYmtIEEFubby7cyOLLPEhk
	LHDNK4dulpfM+JLy/nQSwu3ldmvtcHmehZlIMgyk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655640299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Pd6aiVcG+IfYMoE/wxBZwmqMeJURuqOnT7BV7tp87s=;
	b=BngNdlmTMl1c3RSE2mM9VyibDNMIrtQBIvMboP7D2inekABNV4yOFLL0T8S8wwOS
	crdpMp6rDxiuln14q0Sw7Zs/HGFGWbw4muXO+q+lUoBpdOw0KCwzn4wKMOHPThZapzb
	kht3COCc9WYvRp1IFheRFOw59MjPY5YtSa+4K/K0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817bda16dd-d9af6a72-80e9-490b-acd4-02bbc4af3908-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4201acef1c4761dbaf68e0d83744ee537a6703788da09e003e2979f61c75a377
Date: Sun, 19 Jun 2022 12:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655640298

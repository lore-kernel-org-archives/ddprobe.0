Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8152F2D
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659127252;
	h=To:Subject:From:Message-Id:Date;
	bh=IKNR9d1KzF0s0v/a1bbV8Rjj3Ck+NMHeCc8iS5zAoss=;
	b=fv8ctfC85QAif5/zBEEVII+OhUuCB7p9PT/3VzYzOTc0/ogMZ4/2/JJuVnoZD3/S
	bXz7AaZGGFX9XSGJuJen3pSXfJYF2Cj438nJOmu/CqjgxIKmO3YLKbeqm5DrPMZ5xfV
	qKS0reV1hQnskmIyZ1PIUPeBLY8klxEO1sxldjAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659127252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IKNR9d1KzF0s0v/a1bbV8Rjj3Ck+NMHeCc8iS5zAoss=;
	b=NhoLCkzeaclmfQDq1WZ7JLUH0Hc8xoHRr1CzY8InkzJJ8CWmRNC6jW5V3x+6615A
	Q3+wVec4aAp/q0oJ09tPfU64rq2pSa9HeMhshsptm+tWPerBfm6ocugYKoCdVRd0kr9
	2SHMgt5iztWr4kW53giYmtUMrIxd/Gw3bqc1OVak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824bb0c657-4bbd829b-8744-441a-9d45-830349c9214a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0697cae6a67cccfb671283b4527010bef2319bd48c03af2556502a8a5f3f92ef
Date: Fri, 29 Jul 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659127252

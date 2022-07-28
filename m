Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE2A10E8
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658981452;
	h=To:Subject:From:Message-Id:Date;
	bh=cGsg+wJCpJRcW9W/ZOKkbtRskuJtmwHRGXygCLO/s1A=;
	b=dlrb7RKCmDFL0f1gXecKmeU5dHJxUwsUB4xuBN44+AoB1ezvNR31uYBCZf1wlJ7g
	vvjbxOzXnAjrbwhW2l37b8wDO+zwfgjnJxvwKbhbIa7lJcwEmCNhUqG/x46xHulg74j
	jQ/9Gzcnyirxq/YWu7rx5L/kDg2cWOMeyrCzOjx4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658981452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cGsg+wJCpJRcW9W/ZOKkbtRskuJtmwHRGXygCLO/s1A=;
	b=NGcf7mKOor8Oe2gHWi2kDJcvA/QjPpbCUcMAbMcPDqM1DB+cpFCyrdDqgZ1FXe9/
	YtpAgRxizEmwETxh3u+THpA3Pi7R0BJMb+EmRvDBBWaBHb7qAUT1pRsVQ9IMrDih/3M
	wrlzzBP2YZNt+Y1F0bwXJkHOLQ2aJCA7X9ERbyUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018243000b05-ae01c7f6-b6d9-4895-8549-1d084df2e83b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 770e4d1dfa681b5951aecef734794241e5aec6422858bfb753e334e7656105c5
Date: Thu, 28 Jul 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658981452

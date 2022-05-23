Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAF22F27
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 17:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653327719;
	h=To:Subject:From:Message-Id:Date;
	bh=be5r+cEQ/9oRbP+59OF8B7l/ojHQvYpOkNfLzVykxaE=;
	b=Gi0eXBit8ycSySpcYNh8cljyW1Zvukpqs4nWYinoVqsV6TX3JRferSnqNqrTzbXB
	9+6F70cWu0b0JMnEumWovulgyTQ4kyUa1ZvNtWa27Er127T5f/WEQ4t8esLvN3X+bVg
	2P9HSQiHfQmh23/UHyLqByiVswF4VICFU5/efYy0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653327719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=be5r+cEQ/9oRbP+59OF8B7l/ojHQvYpOkNfLzVykxaE=;
	b=IZnOsbsvQA5rHLjoPVgxCA43tQQxsZ4g5CCFA8331Zq0j33r3abntV8gcekzCfzd
	9pJyCcH4tRGOY2oOOuMtK7Ct4tUqOXEKCpJvGsBP06orapLhIgsk8R63VHjUr4SHwda
	wtiHI9KDHE4SF0R1aVae0ZWjToTRD1p2hZvClSPo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f202ebb8-985b8b72-618b-49cd-be14-1071e1310043-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 751201fc922f8dc59c5a5cf533558239407e63ec33498dc7d922a8047bd83fc3
Date: Mon, 23 May 2022 17:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653327719

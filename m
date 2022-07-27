Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C96AA20
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658955052;
	h=To:Subject:From:Message-Id:Date;
	bh=N+L0c8POgte/ZPGRJZxXfee7rKOx8095wCqHxBSLkqA=;
	b=IHBz2bMU/ftJCy5RJV70eFC5b5I50j1wwF2HVsE4aADZTduj5HhzT9fvbWMkRN8Z
	i0x4iSuvRgSIFHy9mCUFP2F9Wujtt7908MHq7AdS5YyOh6E94bgcSJWjWsMqVNhjrDT
	RvTn8+8vDdDz1JmA5RvYgvcRMPIqnDhIfBYxkTWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658955052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N+L0c8POgte/ZPGRJZxXfee7rKOx8095wCqHxBSLkqA=;
	b=L9vtMlSEs2Gk4j5T0NNnoAWL2+8bRegDCu7/2S4tmhGPvR9DuQylHURBTdBsHaxL
	n87RJp/4WPL5SXoFX2R8BPeE+v8bX1srJ3TP18E66netUIod5gL7OY+qBvtvI9G7Qjo
	Y0ETLMIb+O8p8AWvZ9/TSWgl2vSgMWfiFHCuOI7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182416d35e3-cba27409-dc41-4bb2-84d9-a7928e3f8ed9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c42d064cd8d4a096d9393a86e1a2277d371f417265622556a0dbc48000f2586
Date: Wed, 27 Jul 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658955052

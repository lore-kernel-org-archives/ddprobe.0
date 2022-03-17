Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A002F36
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647522384;
	h=To:Subject:From:Message-Id:Date;
	bh=U8n1H8EoIcvVfNLdRyJ0PFXy98+0IJknMMQ233y05AI=;
	b=khJvI8f/347RtVwR5Ht2y2XP9lPmi40ii3xSh0WVk5GOholIhO/8M35OZ1sMZoKI
	vdakPWAyF0GZcD6l+EcsPeAWFHFRSf9cES2sFLAkqYgLI8jLMQ+2da5egLK5AsoRzpK
	8Zb+GQbQNAocfco32eEk7ya9uCe1peDPvY4DWZAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647522384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U8n1H8EoIcvVfNLdRyJ0PFXy98+0IJknMMQ233y05AI=;
	b=gGkzHKK64RKY3T1V+g5ffZQQS4P3Je5lBjtJojYvF/N3Vk3ZWpRPHZldnlk6rMdT
	B7cuk2oSS70ETFtQ6vYVnsmaPGIiQrFofy+s4eJnMM/6XMEICINDVVvgG/cnIGnUs3b
	3ttVc18Y/PV+Vv/gs7MEyOikkNqTXtMYsu4qToDs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f97fc8b70-9529e328-03b8-48bd-8d08-362e18edd2b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2def30e190188542c7722a2019154111f06b1a22c1851d5010a2e96cc152a5d
Date: Thu, 17 Mar 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647522384

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0957F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659344452;
	h=To:Subject:From:Message-Id:Date;
	bh=TBxfUCZnWoCXyMMLaP6dnNIC6BdQGHnW2MSyvDVKxkQ=;
	b=VEl0Q28In8IHRaImZfq8kkQTKwX2s87OrSC5F2Y+AwdZcbFjodwba8Rgaf0CEndq
	AahD8bdmF5oE9xd6NAJ6OLX9gohEL1I+pGkQ0pjXeIS31b1+dep4Qwf5bT70mJo1IXW
	5twP05uk4obFka0oUfmooXmvWkpkDmcqgTxlhnMU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659344452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TBxfUCZnWoCXyMMLaP6dnNIC6BdQGHnW2MSyvDVKxkQ=;
	b=ZgKRWOhGwBm1mlKpxfX8X2jCCmTNTT3KlxqpPncLWaLe5lsf3l0Qaguaw8ikPNIS
	HnpuwIfs97M7/1y/cdpSq+mBwAQmP94U+UreCEz2fRvWzmNobVPDQWP9yMU/mgyShnu
	k/8cm8F+u31kzT7qFz/G2f2yIwNVxSczudgyV9uk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018258a2fba6-a49f3fea-f267-4b5d-be04-dc159c785006-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4cdf692c9a371a52d918fde22ed5157933132bf125edd274fc93e2e59165aa0
Date: Mon, 1 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659344452

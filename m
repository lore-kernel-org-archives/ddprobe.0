Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBB93D8E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 23:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655162279;
	h=To:Subject:From:Message-Id:Date;
	bh=ZYTXuya/x0yxjTLws6vbfkbI+TDgskMEmRIFRufDPCo=;
	b=L1yv+Z5XnRepcUwVmA+YpSp6WVh6bzlc/LPeJxxXcFy9Mjh9OXQuB4zowoIYM32i
	RdldPJdOhZJ/V0XOne+pwF2APv9JKmYUQItN/xp+7S8bPSFILV4DgXOHGjC4a0ENNcX
	AZV2n0wIj8OQQ8NHSaE8eJjTkolH8kXfgJ5IZmNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655162279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZYTXuya/x0yxjTLws6vbfkbI+TDgskMEmRIFRufDPCo=;
	b=V+WGF/wjCl1q+ZyNwCaqgfjJeK15goDYgfAA9WetMmmyn3bkF0NL8S7gU7C4Dvcy
	1kLHActmG2kaakkZ/X7M33cmCFYJu7j13/vGcB+U0vRW0N9xt0Q2mfz5/oN6AnkXCL0
	ONYHYOxRf5yVSfAjdPNEC8ScSC9gfjhiYJBTAP2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815f5c1577-c125e0ef-0b89-4149-9fec-5ab36b402085-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f79e3bc4109eb36a86d4e690dbfef4c9370218504ef3330e8b2f578e162cca10
Date: Mon, 13 Jun 2022 23:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655162279

Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B4346AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661121652;
	h=To:Subject:From:Message-Id:Date;
	bh=RyYVyD3iuYjPVw/eRtR9y2M5zFR6udw0cUaAE3a8UM0=;
	b=foV0IKsnLJGK80f3lE96565xFVx6NlSTR4wiU+QYqcuSELYhI0qoE00ebJ7zwRrm
	eoLbnVw5ke1/etSQHu0oroFrtBDL9Dp/466r5XqXR0bz1hFEUPb8mioX7kqL9pTOUH/
	XYc9wmHxwMZIpOl8NMmwY/PGT2grvTmLce0XUdBo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661121652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RyYVyD3iuYjPVw/eRtR9y2M5zFR6udw0cUaAE3a8UM0=;
	b=O7PMjehgo5hzfLF69u2VfQHuPZbCcQ+w/puqvrV8ygVUMGfZrQgvablOIVG234GH
	lq7WU34yVgQhG0DkKkL4OE1+WniWiD2eu/GWWQeaK39L/bv3ub6s8rGU8LQn8hn2Iyu
	y/oQ4ZTNmhn6KIc3rgAmngQSVvnwAZ3sm4NIPKR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c290e74f-3de0e380-ef93-4d04-9e91-6506b77d066c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f98e80aa0e75e3dcec3a23c510eddfa6dfe3e53bdb73dacd8ca79010cc94411
Date: Sun, 21 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661121652

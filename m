Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388EA3C00
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656713212;
	h=To:Subject:From:Message-Id:Date;
	bh=oH978PdIsdhcuBV1O/kYN1nT8DQk22FYRlWqYd4Ygi0=;
	b=ZTrvtRue8ti1tY9zgP4eZi9GEokkmsFfPnOgVC54Ty6vbv4p2rEBTkRcvle06u7b
	XocNzK0DMDn2ZaJYWGCqzX2uvENff+wlfoCUhLl5y8vUoHSTqOQO2b0WzdrcE0UhwVa
	R5Tgqp5ML7T8lyHpoT7BrJjBgZKFGZ46ApFBv5l0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656713212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oH978PdIsdhcuBV1O/kYN1nT8DQk22FYRlWqYd4Ygi0=;
	b=cZbuaqw1tn/3UT8iM8wNPwuyQlwBcOU0k2GmAiBiMrri6aQZeagv5Jq1vbutqcVb
	MKmPQirWamhmc8VAHeM1D+gJwmYQSmETz2jVmAA5DpCvqLi9tXaOjTZxY7HiQFuDyMN
	n47GcYhUDJ80T9vyRyn2E/FXnB8OxPSGtDO7JY+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bbcd71ab-67e61315-2fd8-461a-99d8-7ca7a751ba9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11286a33ca4d38a85f50c736022a6b3130d18982c67b93d84bab5141d3ac82b3
Date: Fri, 1 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656713212

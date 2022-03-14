Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAA936AD9
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647294084;
	h=To:Subject:From:Message-Id:Date;
	bh=nLg7E23Dd+9sdcE52ygaDWxMQgj/FdXhttXiHA6ZNJs=;
	b=Cv9np/xsyl5TCQuC7txEhiBAK+eyKb+dZ2yzBUTYEWxhCckD4wyT250jYXgQguoX
	kaV6lPoiu9/dRDwN2e13GZ9TH8XHHR4Aosa0KU/Z/7zi6Vmrl9povq3n7H3t1OG9yH6
	VPshwQb4Bj0w7USaflyjxYdQPFy86YGebaGSldgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647294084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nLg7E23Dd+9sdcE52ygaDWxMQgj/FdXhttXiHA6ZNJs=;
	b=O2pQlYF/uFJIF2+dbrRRQ0aPpLE8ynmSbeRzgI6j+GWsnQDebx6xfUEN4QtGOor7
	jXmsYc6BW43HSAKjefm8pPDMv9wmGjbng6G90RmkQdEpTdHazqhETkUYEV1IsoslKpQ
	0+Vti+SjEfhncNlKuUDeLHx+Jwzld2V/L7F4F4k4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a60f6b1-04fe6ddd-18b1-4d8b-89db-b02b05c2699f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c0e57c1fad3552b9e1926b0cd2024c6485a76c956cca7015c8c55a331eb69e9
Date: Mon, 14 Mar 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647294084

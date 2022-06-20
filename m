Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4973D7C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 21:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655761559;
	h=To:Subject:From:Message-Id:Date;
	bh=EvQWkFhEd8gahBsYczf4YvD/Ac34gzcdeeoCGnnO+c8=;
	b=dLOZegfXZOhLbNNPiNKpiDXHTNC67CAcDOq6mnCc6Rb4iDxlZ8W0jZv6KgYPkfuI
	EdQhrpc8770aHGNHLeQzCSwrub2XR14/k+V/rtcI7yJiEadG6B1J3G1C0yVtH0Aa68y
	e2vsj/xW3001wKhtdxlwB4LKlEkhTxbIJ8tLdtII=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655761559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EvQWkFhEd8gahBsYczf4YvD/Ac34gzcdeeoCGnnO+c8=;
	b=ODygMqg/fLm2MBhY+hu5roSMbzPhKRpLwOtNY3s0CsLmfU97eDZfG8n1T4qXZAvp
	wiQQ/rVka3BvebVYk6JjeFpUHQRbNgfnaqDPcSGNXxI6hhKm9dJRYjv3r+Yo5inm26u
	rDhpCnupcLMXpT8o4TnurJSFZ7XSqaIB8tBHjvoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018183145ef7-e1a07a43-b0b6-41ca-b0fa-143fcb404381-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dadd59d6acb53c34fb6c09aacbd913baa35a0be8518e518b5cb4d6f141379539
Date: Mon, 20 Jun 2022 21:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655761559

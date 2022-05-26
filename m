Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA6610EA
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 02:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653531419;
	h=To:Subject:From:Message-Id:Date;
	bh=D8rhed92UnqDz/6sRaqJJII+57Di+8dgHxk1LoAkLN8=;
	b=gRglHRTlPwnQMvc3q6ruZzA4h98BjqIWKPNTFz284YmWb3RZBw0LI3CLKkFxdEjM
	vpCxTeMKdhBng8nQ4KGky9/MQVXsKmxj3DhHCfjnPYFCquYUF0WuxCK4nd5RT4qQW6Q
	qR+5c7YMt2ZoqE7rwxAhrdtOrjDuA88Rf6602VJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653531419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D8rhed92UnqDz/6sRaqJJII+57Di+8dgHxk1LoAkLN8=;
	b=f+HwBeDe84aCO1Nhav5TZN04FW1uKsxtaP97bP1bG66PALepuXwwQW+5BX6bNqgB
	peFLu5VL3maLmACaE4xafgM8FDHiDpNnZ7/THTS3PCGtRhZphKsx74GdZHbhwPqItlP
	FnKlgIIjgTUjakSGkXP+0W/IV8NIaZ2L8SR7iHHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fe272283-7fb0af33-77f6-4124-a59b-e3ce22e749bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 030f822d48cf70fde5a7a77492f382d07e2a8551924e913234f9e08dbe7d3e23
Date: Thu, 26 May 2022 02:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653531419

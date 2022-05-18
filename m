Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC98146B8
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 11:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652872859;
	h=To:Subject:From:Message-Id:Date;
	bh=5tZHhO3XEOHvNmtbCo4ZMpLiWY6LoJf0zX3ZARpG/I0=;
	b=VJKyUYLUJzp4BhLTUcJslzzcjEm2Lgavc9xLzjc38GEAYvffX3P5xPLbcZW9DJGN
	u4nEb2D/FwjeRfB0apJl5Wpiw8M+a4CPhsL/KR7EKjyiB6jWNswGgxRc8sV50m4KOu/
	34GaA4B3sQDgl0AldHnSB62OTjMKEWpR+4bprwcc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652872859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5tZHhO3XEOHvNmtbCo4ZMpLiWY6LoJf0zX3ZARpG/I0=;
	b=SHYyWCR+VQVSg8lTROX78jXkVXzpX5dRacxWtcL6ad0x3Yu+UFIwGqZjjTr3mY0P
	VVStCpziAGR5YQ7GZizG3P3J1gwF9Ipsddel4T1OxvnTLPrYhbtYs0oK+UWpaIgdcal
	GusTlJDOvhKsG8kW9LNQVeUXquwTUML10erlCG4M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d6e64e85-d9cc7d7a-ef46-4f35-b85b-cfd15ef9ee59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abce7c2694a512ca5fdff33551b17872be876c882db31bbdf002eb5a35e0d37d
Date: Wed, 18 May 2022 11:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652872859

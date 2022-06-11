Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6A07A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 18:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654972439;
	h=To:Subject:From:Message-Id:Date;
	bh=57AnqzxyyIyFhBKaMp+1HBr4PFi/viSMnAp/FHbUwo8=;
	b=CeUNaGvLmxUZYBjdeZwycOXSetPc8j+OZXuAmNn6qr9B6Jaeho20JXGogw8f7hJI
	ss35d8ohQIL2RdNzboGXOLyidsq1bR/MQIehVfJB92/QhIyY+xYT+VEYUYFrRi+Dvgq
	y9EDOPDAlDr69J8lbh9oRaF4jOun6RzFhKSMQNec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654972439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=57AnqzxyyIyFhBKaMp+1HBr4PFi/viSMnAp/FHbUwo8=;
	b=Q/GPvcnMlqW6pDBrwPrGDwWKB8hS+kTcIy8bwcpXcWgtjFHZ6V1kit0QZwkgmfpQ
	6lgESlQjOCPbjzBScihSgNavLE5cWLrJy/2yxYiGW/MjDn7mTuvj/Khz+LSbnVJqe1/
	wWpBkeZeVyUZl1xXnIM3REOR9eLcnYkbV4Uc4Pfk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181540b5aa9-73c5b89a-e653-40e2-bfba-29a2dce94eb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1fc9fff475eff04337d4f31c743bbc64708af46bdad4f7ed9f345737f79396a
Date: Sat, 11 Jun 2022 18:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654972439

Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 778477A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647504084;
	h=To:Subject:From:Message-Id:Date;
	bh=Lsab0JUQv+BYg74aOMIpmni184ie6x74hRp+oyK7Sig=;
	b=OWDgoZ0pRHLnciViYxHkcB0/uGCFvwFopaJCtk+kkAF0EUmRPLLgD7HqeK7I+nnT
	4UeJdMCuojhXKq5GSV8wUhzqW1mKbLsioQ3HPZbr+faTtIyTaPNbkqPCs85Eo/i/luH
	0geFs1qYBq5w8VN7uVuty/66X/djcGTIRhf+VImk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647504084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lsab0JUQv+BYg74aOMIpmni184ie6x74hRp+oyK7Sig=;
	b=OhogRMAQO1WlyKfYPrvJ6Bbq1as0kVJeooWBZPrVBFqFGtrSgVjtl81+Cei0nT/c
	WPFSXMM7C4SJrQXDiNPT9k3M46ZJx8MkoN/oD5A2xvRAmYQpxwbEaIDavZm90gPakHq
	1cVvjNWd+FqpVWZJRgCCCIpWO1CbtK4JWTdvosqo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f96e54f0e-2e3cf718-5fe5-4b5d-b09b-259dddfac796-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f17cdbad75428c9d417b27ee71c675086e0f24aa562e936ab0f6360c2b58f375
Date: Thu, 17 Mar 2022 08:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647504084

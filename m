Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A9C4344
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645111284;
	h=To:Subject:From:Message-Id:Date;
	bh=7HKucAs1pGxTLnxAjT1nlbCSjzDJv41xvMqBT0lj6PI=;
	b=ikc1a0wdIPwOlcUlUq8vuVhh0A4z5NKuUkz1UTvmhPU3eNaFPZnh4OfB8aTXaEpm
	9AFstFzkazi3/JNtiMW4XiZ0vUKJ3LtPLv5i2noxnEm8nGEGSrYjj1PBHq4pTOHNH1u
	zns5aTJ5mGgkL/XIgdPslnZaE0Fvk6tsQURo7ung=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645111284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7HKucAs1pGxTLnxAjT1nlbCSjzDJv41xvMqBT0lj6PI=;
	b=NjSvFuKYit/OAh3/iAOD23J1RK76PPA5Ef4C1bP3AAMIu1OtwSbohIYIUPR79a/0
	7NaEh6HVJO5XkQw6haHgbw2hyjXUcCW5sfK7xbdQvY+WzQoXX0uGwP0zND5gDbh4P0h
	xPqOjoMcIMpymEPwZatfgWKRuU5IpKHtU7PiZ7dY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0846141b-c76d601a-0ddc-4190-a5dc-b9adbbdbf56c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55d1496157b86210c38c0ac3cd764b227dc145984a1c802811ebc6be2cea9e63
Date: Thu, 17 Feb 2022 15:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645111284

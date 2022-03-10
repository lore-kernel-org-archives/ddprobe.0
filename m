Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84BA77A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 08:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646902284;
	h=To:Subject:From:Message-Id:Date;
	bh=0W9fQkbZRcWcQt66E9L2jCUI3yAk3Lc7ePDEOtIfyfY=;
	b=G3JuOoph9K4UhbyETftky9nKvZsjfwjUKtUf+TmALWQfWDooiPKL5Z8Do3vJciL0
	hoaFpv9FYmTfjJ4N7x3gHD9QiSvPxUs52lJQgzZio+f/Jgn7Qel4em/2hRsaJ6yfYil
	7IkyKmiu7TP4jT7CNIxE0JxKiGpXPwV5mNlZiqYc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646902284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0W9fQkbZRcWcQt66E9L2jCUI3yAk3Lc7ePDEOtIfyfY=;
	b=Gyng1MjzQ5QPg+0lNZ+AhLUCEnXaG+jovnhqISko46tlnFSbbHnQ/S+KvVCPwf4p
	4vesB2Svcnx5iVOk3LrKSRf5TrBTEbm3C1oEUQ4z7qHP4qSrBpDyFGdP9w4penPsCW9
	jzzB8M4d4Yg0SKoUHh5wpeRqsT63vWeyVL1qenJM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f730691df-fbafc139-4c15-4e4b-8e71-63e8f807d82e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8738ad6924c8a50eaa817ebc188d8ae4b0480a6be3cb1f0d78b8efc7625f55f6
Date: Thu, 10 Mar 2022 08:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646902284

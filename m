Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67D87A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658990453;
	h=To:Subject:From:Message-Id:Date;
	bh=BqCGNafDgxWqydayLTZkvACv2OZZWaPnBtDva5lSW6E=;
	b=hQYJiOmcv7ZZoh+wojVJHgCxzJTpmuUBS9t3xQ69xkXEUVxXJl2VgJyNdV1XPGeU
	q/SHcFGm/sNykf6AMm1Jm8gMLX7YQrcKTB7VNzAUkJsGBKfndqHkjkYQGUzI4qXReQ5
	HeB/o1LkYH3HIQcm6/DrSIiYrfuSCWhamr+EwSdg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658990453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BqCGNafDgxWqydayLTZkvACv2OZZWaPnBtDva5lSW6E=;
	b=Z5iUdgyMNr6yXFdrd0N/ZshfkVNkMIHFFgCQ8vXCpiVbVINKJF2qQeQqpWAu+Ntu
	euJmzswLg1BQL8M9l5EzwFaWi0tP0OtgGyLjPhziViQAOXSD7ceE7Y/ImmCGV0wY4O0
	ezhyEXEJEfvOWZKdbkMZ/La2o7UiSpR0oHKPRwbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018243895f5b-7254246b-324f-42bd-9a11-5aaa3afceb08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa17c7fdc66c16d44975ba3fdedc4549050e0bc4b1dcc21b6d0793c6d5ff6577
Date: Thu, 28 Jul 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658990452

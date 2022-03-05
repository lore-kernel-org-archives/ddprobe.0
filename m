Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586DB7E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646447784;
	h=To:Subject:From:Message-Id:Date;
	bh=paMuQ0W5HQmGH5kv9TdyVfTkluonouND+uTzbEfFjNk=;
	b=P9BunF3crssNNFafm20oGHx2+l2EpqQHttx9XjuZVrBYhLIBgkZMB1vYFGUO35Ur
	7rBtGlOAsJqirA14rDjnVQdEMPjEPEwAt0AMC2ExuJUZMC/boCjPSKMVdkCxYFdg9bE
	m4p+nE2pppL+nzf67pkSXmr0OhQZhJmxfsjP/Dmk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646447784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=paMuQ0W5HQmGH5kv9TdyVfTkluonouND+uTzbEfFjNk=;
	b=kicDz3ihb0vkZArQr82f+Nls+kCrO4cG5PGNsKhyDnrHSR7U4duJ5lpE6Uz5BX3C
	C4T87k9GvCTsV411JQzp5+Ana0jQ5o1j+qt+zC0JqF+y4oFwbyOuZLO8GMI7cfBOjJ0
	97QOGCxx/Zk0Qnsl9UYnZ5d4/L/lP426Fm+nztNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f57ef733e-55b6d735-b355-43ac-8536-1b39ab15e3c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5e24179ec0c47b840273a4fffc15fd183d65d345a8c622ebbe1ab3b4a650b0b
Date: Sat, 5 Mar 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646447784

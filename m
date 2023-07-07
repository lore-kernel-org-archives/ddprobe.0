Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565FD20E0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 09:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC129C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 09:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688723828;
	bh=WOQNsCWGU3UyHUhyDa6GQJ69Kq+TeSbAfOP/xXuhlQY=;
	h=To:Subject:From:Date:From;
	b=RiZQ0r6ccMlIM71HDWcmz1eb3gps0581SrDuZ4OCu86hVfgxJUaDERuZgTdAyrCbA
	 ju66pg0q52pk0EHrGqLL9OJwR1BgXweJC46vFPjbttjf0Gf6lRSDzTnqFq6Hf/qCsl
	 iRVwZEp9PITTRZOTdK0hOnHq+4uGwIMeJLARAloxK8LLEIcGavqjyijTawoICKIuHD
	 h2PdfiSxmSsW8dEPIIwH1qWIHq44j/cPhJwCVtLgf+z+vvn+6dEQhEFa8V5IW+SqA8
	 0MqTZw1B7IWML/jNOJVQ/xNtWMW0eIfU9xsIHi/YwBCWpSqeo69K/orBScg+2Okolw
	 WQr52Q5O+6ZyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A309FEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 09:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168872382866.11543.4980822557166132652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b2444eebb66f7fe2df851bfef89fd7274358fd04ef0c0bb7bc46eb698aafe3
Date: Fri, 07 Jul 2023 09:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688723828

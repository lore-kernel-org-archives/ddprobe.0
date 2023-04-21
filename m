Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB5637A
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 01:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E908AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 01:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682040425;
	bh=Mb/MU5qejwAwVey38u636ayagFYsutISp/7RqPnFbbQ=;
	h=To:Subject:From:Date:From;
	b=kXJlFo/04zMP7ooSWCe2A1jYC9lUwBPvAdnGMOxpQoXQU3j/HzgaE6I3/wNqfvV4D
	 JMUkf1mxpBM2XkvuGE+KON2Q7LDCOVsc85YnFqEuywe5qDwZy13DQk4KYIJR5KWNc1
	 n1zNTk50i+uPs6TzX4B3glhdPS5AcQVjfZG1udegF4aeF1Bkmo+si1FRk+lYUKjyPA
	 qzCRl5cmi2HwU/CqdZwKB1cPz1cG9EvTcnjD0diKQlbMzm/Fz+J0FzAM73F5UQqQGp
	 c+IGhUNIFn0E8ms1DELn7AX6w3FpmXpQ3COkn5qe60jENQGooqTUHe5bDKJk9uIH7j
	 c4FbUF6YbQLCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C580BC7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 01:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168204042576.10954.4991226297066681685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1578cbaa2175c716bf7db35beeeb38ecce285d1b8a8752d6c945ef2e65488db4
Date: Fri, 21 Apr 2023 01:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682040425

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4C27C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700E7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663704053;
	bh=XhclOCR4l/OZmgn4hXssnh/MvK+DcQBSNg2Wn7q3kJM=;
	h=To:Subject:From:Date:From;
	b=ceevNQXAHrtjjnCDSFAd1gIksvmIu98MYjZ2+c6XZVyaCn1JHbBDYQCoH9k6MeVkQ
	 mAWPYBeTY6lebKjuJc5iZFgMRJC94EZoh38e416dA4lEcW1zeFh5v540kIJY8upZ22
	 kRXtlgLjIqPa4HIDbuZsvqtB9/UktuLlNDZX6uLbDmEfBkLn5XtCLJyzD43egJdS/Q
	 6u5lDy3zprkRhw2DBA65msD1GJ0Gg08pR5W2sS1jBdN2KDIBNJ7K1W2Zwtv9JVAOWj
	 lQ7SVolyOPCxpSQ4WcDfuatpP1iWbhNkpe9B7qyKK+Cd23inc/0cAaTRhAP+SrfzDo
	 +1w7a9zwiioTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59103C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166370405334.31544.3231648023216285593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 779505558968a9ac0b7eba8609787fe4477d15a9e5ae040ee78fde4a80dda3f7
Date: Tue, 20 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663704053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A781156E6
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 05:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FD6C4339C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 05:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683266225;
	bh=1WYG3km/V7eznCypdEBQv1Y5jepyk5H2CCUfdB90Fro=;
	h=To:Subject:From:Date:From;
	b=HyOtTD8kftpUz1aaq8wSlMS+glkxhIi1W0HNbHduAJvT0M+Z1/eDfzxVd36JPpHB7
	 VhbwxeRQAK3BL6VQOF5KAVc2iYLN3meDWxceLuzTlS5c3CQWRzuAJJspIZTWbkVJ+c
	 iVuw2fZb+By7LHb3kGDoRfHZZmD9DRh9UdDfRgA2BTNw4b5RJkfAwZOXktDm5pH8Cc
	 cVIhYbjN5QDbqTPDU3zeCrA6v8DvN8cyU0LbOhwmEjM1APZRocycLpF45tDlY4Mo8l
	 H112qPUzW1sn1dirLlprJR36qSm6vtVimKlvoOClYX8WY0J6+dYv/YG5yCD6QNeqEj
	 L6QDodsy73SAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C44C77B7F
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 05:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168326622573.21290.921024128159780519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe75e8d19e31a7989fb52bd2b3f7c862e7e3dfd64102b12527f47a66b55b401a
Date: Fri, 05 May 2023 05:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683266225

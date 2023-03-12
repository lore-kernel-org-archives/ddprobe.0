Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4186446AE
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 16:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB51C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 16:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678639025;
	bh=JM/vn74IW7/xYdYLjYzh5rfd1JT219ruu7wcekETyQg=;
	h=To:Subject:From:Date:From;
	b=IQI4AXMFF8F1TfICEbEDHY9wb37kopaUyHkE0PgsfCC0xjuzx+mTt7a3Y6axzIssH
	 upWc+l2PzAhMHJjlywxtG4TiK0f9MI3kePv93K4rta8AJMNvCLBQKNHL13d5y1HCVd
	 qurNgi9INouA/bOvZpFPD4GlIUprfX42Fn0MZXWLSJ2tVKkrCU8IQua6GGDcpNg2RE
	 aUZWw8UDEhi0VHn6aO8pUaEWojzS5fNPSF7VoJskbdNIYGxUsq9+LdPZWv7eZYn9k1
	 n1raBZUfyMkzT+JxQwO0Eef0Ico9t1QE0P9sOsJqTg9ilRpGOo/jcslMcKaYWhjmr2
	 KsWEWaciZciEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E6FC6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 16:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167863902576.21842.3790116181821433035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e872c3d8bcdd692a40403fc944e31a0b70f751828c33c90ce72ce1961f3af0
Date: Sun, 12 Mar 2023 16:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678639025

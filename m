Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC94BE45
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 09:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5089C433C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 09:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690363928;
	bh=kvDp/BzT5I730GXOT1qrIbBVgdLpNUvvAy185/85Lko=;
	h=To:Subject:From:Date:From;
	b=QdAewue63zsjZJS4fieq29MBxbZz6bH9lKGV8cUZ1PLIvRDUFWxegzPM8tU4RGkqH
	 wTj9Zod+iBy2yOJkCGVrkvLR63mnBYnlmwweGJCS6c6mHFTyEWqFmqhCZs1/l3CSzI
	 u7HjMSPVD/vA9ynFdGAfHjTHZ74NHeitVvqlIvwHC8d2cQSVThDuhxuyybV3lCYZKE
	 6RzUZ6DW4ds/RCvS+6gt97H9+2jW+jwz1nt3hYh73eGkWoL8abiriqNIOgRwol1JVw
	 S8weDX45QcQhTzKan9YkLSMpy4RVM3IOYg2rlfBG7rixPgL5ihv6nS5hoJox6n9Jzz
	 WIFbTrXdYIgYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68AEC001DE
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 09:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169036392879.25838.15813581761020789069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc8fe5f1d570fcfb545e963667aafb1c740fa4aed1a45bfe1c7dd2bfd0bae6a
Date: Wed, 26 Jul 2023 09:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690363928

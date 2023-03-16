Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6160937C
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 03:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 045ADC433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 03:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678936206;
	bh=C+xjI0hBwIb2nmzKWHGGZHogoozyKuQ0DL/6kEEIRto=;
	h=To:Subject:From:Date:From;
	b=QhQTnqIMEtwXEsyHmsTi43xpxQgxtugMW6FH7wqh692ScJBFtXXTwYq2I/VqwB853
	 X6MIf3b6mUxCdHNLYQoohu1WVpyl4hjUiEh4lwhD59mBGVJliz67IpWAqYZUxglG3q
	 SeJD42IhOjOrkUoLMx5k9eXGzAhevdYZXIcK6FHNyi5bEi+axysF5K1PaSv6Z8joqB
	 CspCODl/ZpcbvyN/21k5iixHH0lJCS5Lnnfhg1cYVazHKoaYbJ+SFrEHFNO10pvodN
	 s0GS4GLFsWu9u6GY9pELoL5tYSPlDVjuEj5XAvupq/rGh4T4VNcw6mCAs8iGqPElNa
	 GrqV6hC97eSvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D649EC6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 03:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167893620586.21633.3658275741571673286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c7345abd6a40bc0e5fd7a4de63a76f48ed3bd87b9ef77b373e0fa525c79b1c
Date: Thu, 16 Mar 2023 03:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678936205

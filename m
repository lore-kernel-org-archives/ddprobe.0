Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571247C
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 09:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69A0C433C7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 09:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690622528;
	bh=2PzTXnrmpuF0DVpe+ne51Q6aUp3vywvzi7RnTHL6F4o=;
	h=To:Subject:From:Date:From;
	b=mJ29KAXdQ+/E6pq39PbcE8SEwM3W7GiNvvrue0VeA9uanisA/E/e+S0tX7Wjp1Bns
	 Pr145chWGA9P/JVnWdt8jfbhAmhAPhXWQI3aWalTQeQhRhiG6jSiBos6ywUJxgYcdU
	 0T+4FK5siRYsvIdjgKJ7ozMW/0dPXlMkE6bMp1ofQB73j+eygFxTQtw/oLIl/I5h7U
	 DMrz1ZvvfThpWbsT3zKqvYmu0xE3H59qU7YwbszXkU2sd8KYisX7IhKQFGBB28Wvo3
	 Upf0kVl/ZqefHWZfLdHOQDKjeN67ALkYCshB6U7v96VHcrin/ar3c+uz4eRAg/B5um
	 PSCAa30sNf6Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F15C0015E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 09:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169062252868.3932.14451270723587796753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14cc3488c4f9e0b98cd407923a4f3b7f3a5db0f52fd53a1add96323ae7285d2e
Date: Sat, 29 Jul 2023 09:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690622528

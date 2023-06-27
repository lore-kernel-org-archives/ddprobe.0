Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3E310F9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 09:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4320C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 09:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687858988;
	bh=w+1tBIsKGiSpv85/tDnpRCX4tMVVlz1Y03B/zjnBZU4=;
	h=To:Subject:From:Date:From;
	b=FN3JCQnf5vsCKl+XHJKbxUzqkqe55BmbERGjiM4C+eIT3GE3u6A4BRsYVjdH9w3iU
	 J3bWFSAwvD5EQ/gEvRCgwIPqC5LeLqpwrCu7G4B2uJwjdNUNgdWKDgURVxOhkDDaU3
	 xQBQpPzu+z+jVb5CVW8F1RXJx42SpHQVaZFtz8KiNVcmGq2S9DZlQJlxgcskSKZZpi
	 rYhfdTaxVIHljKYioabuCfPooeKQx7STp8pMdb/fzxjfIZwrU5/sAOPKE1P8+bxCe2
	 AgPlcPUu56MlA62MlxwBYdfIX0Aps5Tl4zD2qtV1t8ZCjMMV1YZCRScvv26aTVRjoL
	 F9iCA7OrpTLLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57FFEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 09:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168785898867.23800.16084787562385326503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0724595e6052f3c150c7141540ffc7f4702c626f97577f7481663758e803d4f
Date: Tue, 27 Jun 2023 09:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687858988

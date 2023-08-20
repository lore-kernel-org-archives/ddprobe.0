Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5692A368
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 00:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC82C433C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 00:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692492848;
	bh=4O9l1l3bEzLtpgaIN/TpCFGUH8+a5zJIRrPzDsDfK7o=;
	h=To:Subject:From:Date:From;
	b=BmbMtqaJ8kvdIlt/KGX0Hlknvv8QWDZcPlClTFNq8z0TDmpbYF7DHy2sNfdbLmdeD
	 yBZ5ghD4LbIfmivAf/nsg69pa+WXSkPxyIXDZOP+BAhpYLUOTJUyvyvojOtOwMVx1G
	 FODUwqanA+xA42MjqWeKECajay+uUBaPgihSJdgjDwbVcI7qQGi0+2Ufh0W3nc2L31
	 0gHuyUdrp8Iw5+TW2b+T7vPV/EZPt1OGBZUuv+Bx+UrXHCuSugWcDvfNvv7XrUqmz4
	 5Y+gA/PJu3lOkSIjFghxg60jpjNJ0Dk6SyOXNE9Y+woGaA+GmQLlyJTBNVp/OwgE6W
	 tiXUB6hmJjS2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04BBEE49A3
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 00:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169249284868.7766.10900961002668048485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7476515bdff8936a63afccbe96dbed5b22a4ebd6c44bcd396deeda41ddb0e996
Date: Sun, 20 Aug 2023 00:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692492848

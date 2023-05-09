Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBBC17C2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 08:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CBBC4339E
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 08:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683622265;
	bh=bQFToCpGfDqHjgVaDf+QYCNOCW1YdKLJ3w5n4iGbIsY=;
	h=To:Subject:From:Date:From;
	b=J+t6mH5Ja+Wx9zl45oRfpHx+HiKtYKPxL8Gsz0aWOrtXinAn5yIgv69aDPlSgnJFA
	 RgBPU4cjxyWwDUinXU7/Zig0S0U8lae95+KE9tXnDnnXKrKwL2mv3HdpY3HjHXBz7P
	 iHz0xng3KyHOm4058H0NXfuogCrK2tTjQ4N3sdTSI3adNFT4f31pxt1bDLoZKC/yYY
	 3Q0JvXt4Q1msgLUdIu9b4OAsqlRnoWfKQSvPX2U63yzZibOx20rbOh84xpoopxQirT
	 udQFGEf1B09d4k6pC48W/C8WTTU8gsmEAlqS+E+bA8dZdrXGtJJwlUWkjOUVFU6GLR
	 ooKGHe+QkufXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1DBC77B7C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 08:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168362226575.18722.16446168346009610453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0025e6e94c3b02db3d63e1d68d480963de962429fcb19bde1db0052e3fdb665
Date: Tue, 09 May 2023 08:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683622265

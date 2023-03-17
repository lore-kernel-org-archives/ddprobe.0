Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B7F2C9D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 22:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB776C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 22:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679092925;
	bh=LlgcHZnYjVfZ+SmBz4pEi0iDSQxGt5mNlacQa6IcvsY=;
	h=To:Subject:From:Date:From;
	b=R7rRw3R5/NpL6tbMzupPfuOdzNAiHZATMnvmZO9hAYmF3XZO7QrXpz2YEuWZwWvZH
	 RMmbmnS9iCZFalOF16RzWuwIuDGZS8GslKOj6HsrZ6Z4Iya32KtnU24ZQbgaRVtpWE
	 tHMAo04NRO7PS3ReQcWTiuJJDvSI35L5Lmwr7Cy7Ay51/JyiuYZ9LEglvuE6G0Uvjr
	 TCAIceaynmpiutFisJindXfqnXjGotY26IGtZHD7LN/z0kGyRTtBgkqfPgYWMwCUGQ
	 5F7C1sqJRFm9cnCA4/wxiYWIoOjW7Tb2mGnU/0Sakd3fdBUu4WSpb2qrwAKeX+EOjO
	 pi9qlgsZldOUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B8BC6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 22:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167909292578.2077.14684622515086085177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a7a4ea408c7a5d3da6f75bb84d87fc19cbd4d97f2adc3829af100f51f85d5b0
Date: Fri, 17 Mar 2023 22:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679092925

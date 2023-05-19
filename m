Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC381119C
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 19:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC194C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 19:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684524486;
	bh=7zkKuOfEUu5bCr4bTMXcdx4W9qN0C/4uwRh5GBd9Bq4=;
	h=To:Subject:From:Date:From;
	b=YoC0rhftl6pP5RrbFc5yZ4J75qD4X0fWz3gAFQEJsMOQg3IsQVBQk54wj6+wTdkGS
	 U9yLCmErD2wkFT2ZfIwdEuEfjRTIVXKNmx1gcf39NbS5TLeNAbvDRSFa/cuGuQrC7Z
	 DLcXU8GnWUQll0neb19LVJqwe6/IKvWPgc0/3PrqW/TapBudfmEZpWi5wfHj1KjK9w
	 V40U+KEmMRvsTlf1n+AsVqaYXWvpun+tMII9OSZZs7CVH3ddTtjZUtavBlVAgr1rQm
	 UcihHfVs58Bq/K6mlA9DPOswe05Tvx0eblACDOmKYbhTemhwzlutvS+VsUtP6s0NPI
	 xjJVwui/KZo9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C02C77B75
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 19:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168452448580.9503.1778185445283522767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead63017afcb4f2801f6c0a9350751c078941ff6ab09dd4789b921292d511ca5
Date: Fri, 19 May 2023 19:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684524485

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7173D8C
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 05:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EA5C433C8
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 05:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692077588;
	bh=nWJlfNswojqadoTZkb8CjO3e1llWA8tCW7ZzymgbUxg=;
	h=To:Subject:From:Date:From;
	b=mlvBtVYgx08mexV/i4TpuVZ6QVBKIfngXe5vTgvZ/sjjTVF6gxjVtsQWznZ6JsMN1
	 KUnIioyILW2B29mqFk5PUOIslFnWa/RfXiynNWrWJ9yI5tsfV2wt65krUtse+vAzQ/
	 FwBhAF6GqStYG3NKctDZPH5qDasPTsOypYwtifg6Lb1u8LE8g6hqMRlD3smrvp7fuu
	 NHqi9I30XfCCjLmqB5MsQ6V9FpILmmVe9zPCaUUI5Yh+k82lQVadA+5uEO1+4rlUny
	 Ltq2jCxcAL0YMnResLL28EyZl9frNIgZTpafcfxKuB9Fdbp0SoXh3V9kjfpSepDzVQ
	 L8CpdA2LHqpvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F17C0015E
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 05:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169207758867.20379.1547499600165772459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a31520caa07da751bb56cb69f0ff038a41e7e97c7d62089cc3809c07392217
Date: Tue, 15 Aug 2023 05:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692077588

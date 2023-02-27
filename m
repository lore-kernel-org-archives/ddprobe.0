Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480B4628
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 04:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1C6C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 04:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677470765;
	bh=m+TPny4Uque+O9vHGx6AgSSeI2ph1jo2IKbrKgr8GjM=;
	h=To:Subject:From:Date:From;
	b=XibNRQf5eIEt2LvHw3+lA6Hir8IFePIZ4fUspJLKA47tfjhGtlbZtID7pkE8q6lZF
	 YKp7MTs0z8wJ0H4HdPXqZsiaRF0xLI0DwgZx9RqJBSF7DGzOcb/dFFrUqAZWNLWiG4
	 c3bJjxtMyfYHC4HRy+7SKRkwV2wdopovC4nyAdd3n+WoHkjDod2sgw1E/VFcxJrZ2R
	 GTusSK+mg386qJAg3xX+xZcEfWcETPR2HdAfP+pmeTvUVjwD8grQyJaY00z5+6pPvL
	 uxwTnnbtEkQWdWaEkd5pDdgS66uMOqTg/AiVA0xGZXmGitqPrXRuei5P5Bdb7tNO8F
	 M7FsJC0KBQdvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0A1C64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 04:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167747076576.2734.13793303543239081244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aec0e0dfb0789bfce10dfccd42430dc9434d1410a597ed59ffbdd6049411978
Date: Mon, 27 Feb 2023 04:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677470765

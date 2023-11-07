Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1378A12E40
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAWlRk3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85175C433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699351696;
	bh=x8aMLCdcr51wmLv80AalqlSyXjnR3nkvR9x3/JBuyuo=;
	h=To:Subject:From:Date:From;
	b=ZAWlRk3eUCCXodvc0HrjZD1+LzUuHQ0adHMmbF5J451Sku4t+0H5sNQupl20kqTko
	 L/F5LfB6w0xSh89GIxhCFXcAaXcEycgwe5G8kw84lSLqrxoT3gPL9tdZb5r0Yscvx0
	 LBwq7BCraC80nGWSK4i8L3vX0nq9eQMnXClgvTIqKxXMJGWbezdPSfkHvREORgoYAO
	 OnjdOVKYxf3VMcm/uFz/XW6w51eb3HHKMMzpJ/9VQ8OcG/+kSETBeGC/cTdc6nokgD
	 JdPacbrYXybkD0Y0knzU2ZRaNphTuMLMpVobaW6tWACSkvqb0IifxLtQCtyBgViuu3
	 3R4vF1CVH3x4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69A5FC4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169935169642.4870.2977348425136528366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1debea4c4f5b61cea31ebc60d08c321dc745413e9ff1688df3cb386c3cf4551b
Date: Tue, 07 Nov 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699351696

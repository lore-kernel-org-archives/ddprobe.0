Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3231FDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 07:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F1DC433C8
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 07:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691218988;
	bh=a8IA87gsQzz9FmWCj1OY9JepSkoRWtTRZuRaJI0P9r8=;
	h=To:Subject:From:Date:From;
	b=DaTDe9KFLLCqoCT9rJhn0yfJJquB3RQFjDLqjUIECiEM856Achr1HNwbYPV2gpB6H
	 xIcN4NGjhpaJgnmiMnADgjrs6e5YuJ5wElAQ8wXbxhXXOAYWe3sfimezO8tm2Z75cJ
	 TmmV4nWREofp1mrp6Fzl3XCKziWPDHafm18V1sgjpQEQ55g+6WeMa+0PJf77Zok7by
	 Kc+Zggm0oroD2R3uKTPGZOjRMDs0FvbNypDwcaGQqA1xBjxoJeJHK3YbuuE/PVJ1fo
	 Dz/fxyiSViV4FMNQCAMptycDZQqtwWbVlpAFJP67bjNSUnoeFW6+bIZkC136gEN65C
	 lLRLr6wvaOkSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4587EB64DD
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 07:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169121898870.26078.16541743905044777900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e137e89338d8550cdcf4abd3d4e68acfd59cdff09e085e3c5cd03e069832aaf1
Date: Sat, 05 Aug 2023 07:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691218988

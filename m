Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E85E15A9
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 01:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC981C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 01:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679449745;
	bh=d9o0zxhFdmUsWVF7rqPhR3II8w4sO+P27yE6DuZ9rAc=;
	h=To:Subject:From:Date:From;
	b=BVyDprUfGq/bzWQ3yx3V5bXgiy1a6MeAHhCV7U8fAMqFKnTo5ww6FuOEou3dwPWqQ
	 8jPDbxhA4+hgoCQk59jGQOWTM+11sHMES5PNtoAKWcq/oLZufIGUu8MYygLZcTiChU
	 rFV1OGTqMjg8TQIqEWnCI0C+Q/3ti4O/2Eqvt4iXpdFhVT9MR/zSO/c52QEs6EQiGY
	 ZCAC2OKOWULBHYiNc+XSbZS5XYMRjaVJk8ZocydO+ck2zdyEKjkd6LrCLDMpwliSZk
	 Jb4DVfM14BUc2q7mxgT/dRDMpihFR/0WKM5wdX2gGZ+rtc1ifyKaraSuT0VdaEmzcw
	 1uUwpZn4OWpfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAEEC77B61
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 01:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167944974575.15493.12981988888256851969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0729aab7948fcde713bdec635c4ac9925e28edaaf11677e618d44673b779ea
Date: Wed, 22 Mar 2023 01:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679449745

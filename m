Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C199A954
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 09:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D146DC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 09:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688723228;
	bh=fBb8awfL1wz1lJm8fopkyz3swV2ESJDkumwQNGIkK8Q=;
	h=To:Subject:From:Date:From;
	b=etAxbOfvIbwj5RfBNRH+vl5k+oYG83PIha8Z0r5e5ymuRGJ7GkLIMnHW1VzaFdRY6
	 e4JQ3nuJ98Cn8sk9zRrYB2kOMgBJZzuyAUtlkrUtZuqx1dv8otKWNaJQnwmtMfgSRm
	 CVA6PAwLXKVKVUWh+TEqZ8/Xp43KXZRUm/Qn0hwuosWV6s4ZIVuqX8jWkAYU6XvvYW
	 RH7xfwfzQMiYoEhaQ03pwsyeZPblmkxNyRQnMigFzJ2ND3f4pXghNSj8PmxWhxPGFo
	 MDtAAhq7XlxikpgbrNIrAXkGoiC3SxFlXvxRjR4k9aveVpg4j6/N2uLeZBbcTxXO3+
	 zFrDs0GeJD2uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38CAC0015E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 09:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168872322872.23577.8054682356181952508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f2d15fa28c989d5131bf89677239a5b8cca0397e430b768cfea5c0286d4c2e
Date: Fri, 07 Jul 2023 09:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688723228

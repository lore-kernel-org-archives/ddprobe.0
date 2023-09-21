Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE4E65C
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 04:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1793C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 04:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695272108;
	bh=6MuOUeUK0yESbDyreOeKB+aqMmO0TGodfPRiCu2jkCI=;
	h=To:Subject:From:Date:From;
	b=aX2HeH/1g5bnEkMS3//wbxrLu9ZgPJQZqCSCG22dcXXWFAIz+UJLrnS3ZMXRD14qi
	 h9gR0rXznrCsPWHzdb4FSJsbNdimkGH95rdOleBTGH4jZp+8AOuV9k7yOMfaVNj82Y
	 sk17yypr/IIJ/lL98E8Cb528MVm+UsSqtyJR6aJxc99bv5pUhR6b2HPk+JJmNIv5sG
	 xWrXfySIveALupVOqSPywEwkT157xiVhJoj6deqyBnV5vqRBhbsAQkQf/pBoLeJa0H
	 93IEwOxUu+YU+98Z5ClaNXQZb7WF1X8Eo1Q4Y+7LB5IbaW33pLWNwAxQUdQGrk9fgA
	 SP6BpK7IZ97fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5796CD4934
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 04:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169527210867.1936.6206708280159567740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000c1e0d28130430b23e59ff3bfd21244bd92407b8d7eb0e6f08bb5821b34e77
Date: Thu, 21 Sep 2023 04:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695272108

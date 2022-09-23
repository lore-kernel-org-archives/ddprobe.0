Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF7F441A
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6918DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663960853;
	bh=C0Y+979Cu7/ewalTRXFxCCcfsvgVt8x2lLY95W79c38=;
	h=To:Subject:From:Date:From;
	b=G4Jiks6TASwb53ICu0iS+KtniXaWKTpJD0aqIaNt1cC8Thekg6Ks2KjmHPtYYeQa2
	 FUqKO/Z/XDbyO9sAwlTF+PWsQ4jrtPJjbhwjAIDssXivHoFehC8XQ+Ip8OuhKHoBg5
	 aumBNjCb0rQ6oPLrzI02kODJzCK+czcvVAcI7dDyIjQTlZoApc2HudL7wYm2ZVHLIX
	 QPGd6YIjQyP3kpfdp6U6bm5IWfQPXcXMIqapy8ktj4V7QBOjfkHJTowK3WbvR8MQLW
	 B969EpXP0tIjNcJ0KcBaqPEo93NQr0Rm0NHpVcY3+lN+nl/uZOdjuiEGzg9bTEv5jn
	 nl8R1ZSczdDww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547FFC07E9D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166396085333.28586.7686867547830612022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38edaaab2640ddf4200091757236a698e08456fcfba0ce8113db67ca0ffc6722
Date: Fri, 23 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663960853

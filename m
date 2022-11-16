Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1E95CAD
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F00C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668604254;
	bh=eY6eSCpGwCYq0AYMipeOLOHRtjJVVDKalljpiGQsXXI=;
	h=To:Subject:From:Date:From;
	b=AndyLyd3RGqgWuToORAoKVkADqUpJBac/N7I5s1dydkVdWrdlmHDNcpevcsvTZ2G+
	 u4+PRTS3V2t+f1vIWgMJyPkADTtKOmUEaBbMntlB0/oGzFy3u8gdMKGcbrVerrIoYQ
	 WdrM0qYq2nM/1lULCf/u20iUh0l7wbda50GatJCjZnxmJoByLOzPOkTkz1oXh3LpnC
	 Uv/aBTqnavdRp8JlINIXbt+s5UbE9zpeiPE5ZRLcVPyhsI0RZWrF1kaJjbI3pqIvIl
	 ccpUWR5NVuZsGnpajHB0tP5lSbl6fNmKILxymcu23E3XUoDfstWA5VfrLwZTLcDoN+
	 JWIgRryLpFa7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A576C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166860425436.10265.10018234425691707569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ea31f4f4512d852e1e37f5b42ee79f057482749fa917c08bf7d6682569ab93
Date: Wed, 16 Nov 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668604254

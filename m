Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFD16AAA
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D55FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668702054;
	bh=dlsW2VOLuwgy+0J/qmdpfJM0U9WUm314olvglNjwLhI=;
	h=To:Subject:From:Date:From;
	b=H6tsJmIMPdw9bQRoFD9p+VuVO/aYZ+kv9Vpe/S6SwGUW5IYseADYO3wjzEbSiWgFF
	 itWOnVogAC3z1+gYFJgUOMJE18tDQ92CIci6odMYTxqlFWr0+LaOLfWbPVQMIvE6M2
	 uB4pb/pqZPnpRz937fUaT+VJB9gRaxAxWxlngSkbh7YjSk1Pa3aoHopLbx7tHrfFIN
	 +6RjnLGOX6EEd6QdpqJDCOx5arrKgjfdsnoXrlMcCw9QWR5/zhT3AkK+9wGtgHlTmv
	 D4uh9RJyZ0Y4Fgmrrw+qWrdyMY8pjvb/BJrY+UDotGzZBaAc3Qaog+qokDOkNSsNub
	 tQNbessw0VxPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54759C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166870205433.10589.7925587640223351262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f71b8508ada5bd9495ed94fc564f79878a69e6c96255b70721814c907a3ba15
Date: Thu, 17 Nov 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668702054

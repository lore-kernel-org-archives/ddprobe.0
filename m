Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B39658115
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjZFKRZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7408BC433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702073296;
	bh=skV7DCboA6MWrxiKuWCE92eMTXOn6KVpTAb5Knju9Xw=;
	h=To:Subject:From:Date:From;
	b=KjZFKRZeStxzx03ac72j4mBGr6UG/gH2WqKFQsZXAwuKNjYCT1GhUQien0UxztBIQ
	 3kOPNtkK39R443p1Asqrz7qXw1vUsvoTjzcJ47u4pM+dm84MJ4S2ZnwilUXbPnSEdD
	 zdrw+xMSpT/qE42TT1O3QxsTAT2cHusfJaWeCxX5vSngnJrX3rVdrfbTWgwsIklhOg
	 s7gaJ8QhzYpygzc1tSnuglmRo6FYK97/y+zB3r8rELzV9xfQKgQzliD29dDfFLShbf
	 NbTG+8dGznMA5gyqo8cc74TnDJYighYVxa3AZR/rkMoPsfkxw3GV9vxQEkIKu7nPXy
	 TuJMQfYfJQSRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD7EC4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170207329637.6928.18391184617239143303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308a325a57d73cfc3c2dc87663cb3dd1b731d9334dcc1db290b1e546a05aec59
Date: Fri, 08 Dec 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702073296

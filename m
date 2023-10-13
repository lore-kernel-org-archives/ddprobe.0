Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486152628E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 20:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jt+GyU5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4020C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 20:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697228828;
	bh=h2gefhrM3rBdNmyohcwlzJQWLruGjaCnqg4JfQz75D8=;
	h=To:Subject:From:Date:From;
	b=Jt+GyU5heCoC6uWrP7nHHBDrHWGOMq8cIeT239GphNf4CkqQlBAB2xBT+jSqUW36K
	 kzbGAZI0V9WzoM+lvco/e20VWwPNh7c5YvT+6t6f0/SZCU1oXIjVQVtGJnXQZanEUi
	 oStb0gdJ0tMW1fe2YVsNPmdbwC83122gxko9Q09df4nqvIRXh2p9A+Bc0vv8qBVc2R
	 B3fm60xB0HXO4rIODWrIg+rTUZKdBpe1rZZG07bxG5hZi9JQY02A1M0Qv8XYn2RxUh
	 p9sPZDCsksZ0PT24yJMha1/Nlba89Ibgumc9zOetPosXFzgeQ1s7DDIKtWwLn4cujD
	 fmh0tMPrxf4OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A65C0CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 20:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169722882867.19847.11815364971589505270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d82d12ee15d7d1af05f86712e523351bdbd0cccdb92cd1d4e4943dfab6d7b04
Date: Fri, 13 Oct 2023 20:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697228828

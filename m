Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DD27C
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66210C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668678654;
	bh=4EoKUYd63TTdyt5hA9Rb0O3N3n9MIYM7dG5TzaKwvCA=;
	h=To:Subject:From:Date:From;
	b=DV6mlO+gJHaNgMhtWO01+twEKGoYvRDBAMrI7/nNk+YOlKJ0G39MPWkNPv9IJ2VMc
	 Bo1fsBiRqS+IUGn6bXaka2iOTK1SnKx0yIRS8cFUeoiVyT2yxsKkcZVbmSnVdG3kxZ
	 mPqaToxXQDeeiNgRQ2WUSommvjwbl8fNB52LD9AIsVhOkExY18TY3/oJwh2KOIiHrg
	 WasYcwBBWOudE23+FlzXA4P6rnAYjF0DpEvw+mKj/lvj4lsXMIMk7cWP9RvW5JWi35
	 F2ZmdJWgMm/UUCBkegmf6fPcszrdC1hoELZAT9UKBacoi7nYcT0EKBtwI2azQhS36i
	 p9wPNe/QxZn+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52354C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166867865432.18249.8863507839325308974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156698f0dd88a4656d8400112e83d0aa93dab51d57fc3a63471860a4378be52d
Date: Thu, 17 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668678654

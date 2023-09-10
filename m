Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E8DA49
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 21:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFFCC433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 21:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694380448;
	bh=Ft78gcPicVYE5YVzizK4vLZ0PBMgbfiOSsDlLa7ggCk=;
	h=To:Subject:From:Date:From;
	b=PYNM55ynDstaJmLn2G9V3JwXykjwhMjL9CqsYvveXum+biVS5xFk1OST8s9U1lfUf
	 igQvzg3phx2sLR4/soOc/sSp3ASwppGYVAercYoZ7f7hgfWDKZCrA2iSzAC3oS0lnT
	 FKsob+pb4jL/37CXZsi6sN7UTUp+WNpDl1a/h1hx7dJq9wJC+gysVY67Qt0XVjDY5K
	 VmTAoHF4lAkaW4mRhf+dcTl7XBixFiNCKQeKOgq9LSlpXTiwyeP2/JZzylv2a3vzPT
	 ZifWvXUUkfrYjRNvdeCmSs618WB3mYFcjpSbRswMzsU4iHPzGA4TYTO2njjTVl5xek
	 JmNM6edlC+AHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAECAC71153
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 21:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169438044869.1175.9442144428024385642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d20d9d5c49cb7bdca2c9283bc48e5e6ca925a1bdbb7a01b29f9064981f9aded
Date: Sun, 10 Sep 2023 21:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694380448

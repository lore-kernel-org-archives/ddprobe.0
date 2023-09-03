Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7117D2915
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 14:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD01DC433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 14:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693750448;
	bh=yP/XNAYVwwO327pXkhspzI9vXA4oDjopb3OYPa8IYqk=;
	h=To:Subject:From:Date:From;
	b=XGK2Wcig5dmVyAfqUWNkWRFK4fuTfzKMaFODfqQ7V0OtiqaW9SiyeCIt+GHuOcrGS
	 0Hj3SuVC+G+3kWAleVIUtNwatxMPSG5xOKmJQxf/7fd1JmTJ47maxhRVxU34EWnm5r
	 w9jcW6yzOgNvGs9H4ek3dei0/fSEyF2wFbblX+mueMfey8DwMT+zH/zJBKXTHgVxoF
	 +4jwI6/oypop5oEhUKq65ygDn9JjTTZ7O+uAPZ9LihiWBimN9DPbC1AGxiirXif7dw
	 LFz8lhpICV+uQgwRVbNWXGTKq3S5wzQKG0puUy6TVXg5CTnV/3QXx4r8ZeOaCVpre9
	 /ITrfumWveNPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2701C71153
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 14:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169375044869.24336.10464835890838313021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c20d19cd2861f693cd8a538ebd4838b67bae5fe6c75cbe67593e2e040190588
Date: Sun, 03 Sep 2023 14:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693750448

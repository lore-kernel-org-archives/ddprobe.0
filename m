Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B22312F2C
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B309C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663143653;
	bh=xaeBhRGMIjkDw67XbecmW3cFB9OWoI8Rkm6B+8NKHIY=;
	h=To:Subject:From:Date:From;
	b=Mne7sL6DcYj3cdWyDmvRlGcdTmg+T+1IosY8z97odVs2VuXXo8WkbDqpVvUQnDNFT
	 0VrdUHWigFoYkzFM/EwmWqI4rMFIkwOhQaE7yaODO4zrn3hPhS50cGrgLqFRmBa+dn
	 qlpsAnFumnujzyMa8TYlkAZ9WdFPLtUEfDV5N21WVjsPGttJ+x6lOmi2SLT97kFN6j
	 qjBhunZZOdC5RCHUOwZsPQvalgkX3JKqI16UWzqWI823VAtqvCAvwwzjw7GvFF/d/f
	 m2Jyv+G1oH/ggK0fXTu0J1DF3H3sYkUcs8KTSnFd9p+NH2TXEK5LJEr2SW66TERHKM
	 9a3YmAgR4eZyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51AB5ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166314365332.22400.12948934066714113236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfe15e8fcfbde8b2376cdbae6810a9e8991d0cd5395f26d6c5a0c2d02dd35661
Date: Wed, 14 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663143653

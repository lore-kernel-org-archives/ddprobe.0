Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D7C7B
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F88EC433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666824053;
	bh=gh0fQp1bmRby0YoROsesKWnuC7Z7o091oDDuqEW3KvY=;
	h=To:Subject:From:Date:From;
	b=qp7Aw1LhP/doXtS42ZS6HEtd9nQzAKxBYe59y/NIhnBan3eKTw6dO8MzhaDyCD86f
	 EeQZ8LyPbot3GA04iwJbPN/olb3jTr3xani/mSUR6YxKmYSGHMAcLChUcd0p93CeDm
	 P/1KOPJ/f6FGVDHl4uoZTqVdiXWGZiHEpmZzw4d8C+aUgAoK5bEmsaIBt6fQsor5ig
	 p8qtoBlcRQQn7tQRMyxetFj4NGQLcXVyZYXnF8UCoqQ7vyUf2w0QG7ThJlWzysvIOs
	 S77TOHfw7YsEaU7u6sIcr5baE7NVRd12YziVodLhx04D0aiUr/pUHCepgM59bkH/Le
	 xwq+MDuhQs7Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D25C38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166682405334.21046.4957575945377679707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4abae46a28963484461a97ac8ad314fa1a8f65d0ef930227908d980995aea9a
Date: Wed, 26 Oct 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666824053

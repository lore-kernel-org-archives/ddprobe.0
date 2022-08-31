Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52E564C
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9F6C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661929253;
	bh=T04HMCiLGuy88q7nZBknU9QIh3tYCAsUaeOR9ugLbm4=;
	h=To:Subject:From:Date:From;
	b=Lz75p5fEy097eKptsSpqtXdbV+cu+R8+jPkpwDigqb2cfqzyMvBUfDXtJEauy9EqQ
	 jofc1p3w2A6QVT+8pWUyu5g27JqKQyDcXwjPa40/0OJIoJKq3YO5AT2DJY4hdf9sPi
	 z+g4BNpla/1zxhWchyqIOQJQ2PeRWClGYzskc+eNDLFLghHmW2Mf+gnBz+eOz4Db5y
	 aW6GePoHuAbicU7sKu/ybIvuK+VH7IWU5fAcaqN0VWjAConOaWVe599Df6tlPQuOBp
	 6okFHw5ipzspeoGYu5auUvnXKPT+v5vhS/vTWw5VLWesmEz9CizSWJO5YaZdmJdbRm
	 E3TMSgT663Kjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61FD6ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166192925339.28862.12493680430414204346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb72a90b1876edd6887db8254991d5f27ffcfcf3c79057755d9a97f978948bf
Date: Wed, 31 Aug 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661929253

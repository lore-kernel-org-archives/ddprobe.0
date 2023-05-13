Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CF2161
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 00:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB0FFC433D2
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 00:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683936366;
	bh=FcM17+8h0pe2VZW1IDM8MWFc8rmdTgcygyT7zrUILj0=;
	h=To:Subject:From:Date:From;
	b=iF7NAKPBSicsA/pRPP+lr5lVwklvNTqcoV5ClTvjHWKzTppaMOenuvEW55XQGruWh
	 uU601oqpPz+hci50ho8HXmvprmjCIYPpEiSYla9bDwrf89V15yYD0ZJBAITiTXPYHP
	 u1ifZCql06CoCJ+W4k5xePRjujQBVpter7xHpmV1wC5eAz4y4WwEpT6pX9hPxtUH8f
	 STrqBrRFEKReCPGVxVzwm92xLhwJ5fcwNr4M22EBd7B76yYeSQM2BNxTTUS2ZKTUJm
	 XvRlMAZ5BN3G3FE0XmROFNtVrmT93ggCGsH8cMeC2UwCanH6S4GNhh50HDaHNumpp1
	 MgnYMAA+Gs97w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE474C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 00:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168393636583.8893.14012587614233962039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fffd71497c65be16d557a4c0d28c703c78315d098188e5a8d0600822e0d3cd5
Date: Sat, 13 May 2023 00:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683936365

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A4F15AF
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvH0oQJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86CCEC433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703492296;
	bh=NKJ+RbsHciaWO4EeUZDPEPih0XrswHr6dgHwkPlN/7o=;
	h=To:Subject:From:Date:From;
	b=gvH0oQJWiHwXs5f3Fl1krpRx5XQoWF7LgQ9JHVxfEtkQOVd3g1FJDk2jUh01eFiUz
	 MjBnHQ3IpDOQJudK2nKvHcWA2dRtsW4b/6jkEQsOfZ3JqIYfBOIj/a+DRqLW3S6vei
	 MEo23ClTKHQpZbs6YK04rdv+w0OGOQHzHakQ5JXAljrAD5Y9jIbVjsFaU3R6l3Ti8J
	 YEk8IWjV3t1i9JtVYmHOHAx+7weqk2aTIGXlydHj8IuqvOylUmNHtpalkHVn1HvGt4
	 ZONMTktv/sio1PhokkqSPngjeYqIJJehVEwl6g1VoEN68uJ1HexMsWe+b2oXRY11kn
	 IuKgwbPOoaRjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68525C3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170349229641.31683.10876817641333027053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36adb63be550c483d4b84fafae51f6f5282d1e1625880e74bd2fa2fd5e6f5fd8
Date: Mon, 25 Dec 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703492296

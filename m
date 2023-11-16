Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D26110951
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GL+YPcTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86D3FC433C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700122696;
	bh=yVsuCSjFe+c7h+VTOR0ipU8OxTzqRW0ZS5dcX1eLlsk=;
	h=To:Subject:From:Date:From;
	b=GL+YPcTYuQIHc2RP8uIq6z2Eof9LpMI5icXHKPa6xsc8ETUTKqzNnsdHOpSQEBrBH
	 l3uEcUnnspjV05kYxC7q2izyGzYZD/pgyh3yO9NGHjhL0glPSlHtyxLh2pGtFBtzHI
	 Vu8NdOswi3dn6n83wzv0wE6YThhQJi7adjcnxzS8AAd5CCQ23aGF3HRQlqOc39S+8z
	 4Qxj/7VKDwYoUnI4IupU4jFYRNbz9m0djRbwXVjPTAEWqDhpo8CFgwC2UwRe5LTekT
	 CF62MCLrN5UiApHMWOmitq3ZkseRfGo+QG3flpzJ/+jk05ZQMJy58WClxJ9EAaYXcv
	 zTVZITA9F59+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B797C197A0
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170012269642.19731.12514126780129595877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0117f3e24b43eba74824ab9424613f626f690d7cfd9c195ecf8321f630878898
Date: Thu, 16 Nov 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700122696

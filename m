Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6ED52F2E
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74960C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661527852;
	bh=pGQhQYU6ros9GQIu0eNfCw28y2wIJz47DaNWOT/6chE=;
	h=To:Subject:From:Date:From;
	b=N1S9ZQpBBUZ7EhSCOA0QQoqUoaOMm/KmtJW7ieGwuas/pZapm1i1i9og395MqsVPZ
	 twqUh953jB5IwcJYvHA5RBWweESNb46o8rk3UYTVPwBNqWTe6mUhh4SsisnrLhdFXz
	 2r03Aowuat6pQgbXnpBzAWiAYsem/LysuoErw1QMAvKOimBmyz9RC6STfUcHjxYGmH
	 Jw8BqUTgIHUmlcpHkLwl2zvpyep8BOWWwqHmkJ6KIebJlAtcEkzrAW6cEOeWthk++w
	 Q4Xu+PF16jQwRVo8d/6/0DsDfmh5raXvwS+o0QowZVHwmYg3kjmcN6QQIDrVbtvVnE
	 HvGQDHUClT+Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5654BECAAD4
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166152785234.27115.10609443872360808125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35136e2b84c589cf5acdfb9dd7f0870ea93d79940f865f950db44b3f3c358a21
Date: Fri, 26 Aug 2022 15:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661527852

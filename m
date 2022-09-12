Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF782CA2
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7205EC433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663016453;
	bh=qwi0LsXcKqEgmZ5SXjHciTEB0E84V54nsdXNDtQUjFo=;
	h=To:Subject:From:Date:From;
	b=IawCvWlUe5BwH2saMpKjAhL1zWG7elHboZlos0meux8iPdo+eDJDC2bs9GTj6RskU
	 6iS5wvkqXuGzyYdG9zv9iW9d19ioamfzAtz+mCEC4FAtfTZUYBSqgTL25UwsCyqhJw
	 1Z/6V/+lmBC6RkouVwoeIL7bYV/3vk9QxtkyTVxI9GHhPvdn9/a6VzEJtvJAqcxGs9
	 Ul9xF8J+mtiZwbytr7QkvuVjXo48h/sfzhnXWu+tqwRvtObe4uasWUx3WDvPiAm1Nv
	 KPYfMxOj73R7xeYs1fHojgbUzV+iOAAcFWhvpE1/cu6L9E3Kary0Ni4U5NBGrA+gYg
	 qKMfmNXXyHEgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55CD2C6FA82
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166301645334.9767.9981153233497260544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf674bc90044963c993316c3ac5dd43e850a8f49478e0afd5477383146c5690
Date: Mon, 12 Sep 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663016453

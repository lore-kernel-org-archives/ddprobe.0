Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D667E
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75343C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671627087;
	bh=dmn4eS2aT3IuwlCMko0Qnq+sidhNcTd+/lxNC/eh76Y=;
	h=To:Subject:From:Date:From;
	b=B9JESZSUMhcLujOVmO/unjhveEWZ/QfHOYQze0lhfB2Y/V80hDN5Xa0jelWTRIMr/
	 /kdQGR8OGxbYpHvzrSxsXbuHYmPxdUwJct1euSrUriaysALgdCUGp1Yp4807DfDt4q
	 fTKTHAdnsXuZcZe4JbANIMJYklh5F2smarWDtQ86o2zKm2WsHxNp6HPct+/yh0txIf
	 wIAmXaSSYMKc19A78Y5qeQHOzAs5Ah62ldCScIrFMub3Y4ZoDoartINPuYzZHfatg6
	 UvFaV+urxhm4qAvTyyH5Zr4q2G+8Tg6Z+FaIOyC27+y74WvXcFMW0tveAUYjCTCaE5
	 x++f3EymtAXJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE82C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167162708738.13283.2895735531045179460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b84576f4b7acb12f715777325439f2b03a2446217d250c28a4c955bf2a39b5
Date: Wed, 21 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671627087

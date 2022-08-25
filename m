Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A062F2D
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 22:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88433C433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 22:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661467252;
	bh=TGIIWKH9UI2+ZlsQdF3pMr4mUWrQMV0/2OfXRuhvPUI=;
	h=To:Subject:From:Date:From;
	b=Wbj1e6ktZcUzPXwlzZjgOm7Xs8rwYy2qkxtnp5P14wZ4te5XdAUOeL43WWM2biwuU
	 UiQpji6ObPuGfEdJZBy3FOSosH48BGFZ0HvdQ+u2ZKbbK+2xmqAV0cjD++cfTcH5BB
	 oQFcIZw8o28H0cC8cfiVfnjyUrXVoXDyowoRdc3pxViOJBbPhHq9oQLIiJdUy58KvV
	 MybeRXiU/RxQ+hPgGHgaBASCWwrhQsDfcdEY89aTSTKljSZ/lwgEXmgJPY7kyMdyu9
	 lg7o2sgKpqoCS74My2sNeybhdg++uOMEW4tXVMgTRsuMjbiv6Ndh2vrWYxcx2pOjPm
	 1e5vlSuAr90rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B7CBECAAA2
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 22:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166146725236.12308.7086972489471513727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2254e82cd506ed2332f2180e0faac2a0557f1c600d12e68215177381bcaf4cd
Date: Thu, 25 Aug 2022 22:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661467252

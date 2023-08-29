Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB00115AC4
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 10:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07B6C433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 10:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693306448;
	bh=QBo87QhGXIEutVvw0ubPrXIAtXtH0Gn+fWivE9qdonU=;
	h=To:Subject:From:Date:From;
	b=GhbhkRiLdE7TqtQII2NcEHSVAfQWyLusuylBkJt6N94R8RBhmvqTH7TtTxq/M0osh
	 G85XAjwq6LUjzgYrVrIlvpFtzjhy6EoK9LwrHWWMeA5IYY/XLPR0i1k5LBfpp8epVs
	 G8zP9/URbOPdgq0ysO4khLipBn3fJgmDuueo+aRGD7gF1WEax+YMcATohpS4yJbwNI
	 gwmYNuVsQh33BR1rRcQ1wpwvLmCSMJ2zS5thOvJueL6I0SgTcFn4osy2GLP0+QtOlS
	 W7YsYpCc6DwX8EE4NbbIQW2IcLmavydU/qgzYLsygHeCK2DBKgUdXVPSOzf52lS+E0
	 664qu0vzcvfHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C3FC83F14
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 10:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169330644867.19962.1109685837176528134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832e224489e7deaa0e9696b2eb7e78d9bb9a0bd64721e5264a4b2557a8d50ce4
Date: Tue, 29 Aug 2023 10:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693306448

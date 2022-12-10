Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBF81374
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF75C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670678487;
	bh=IebQiPX/N8imYGpNx0+cwDq9G4RiVuPZXfNr8puzV68=;
	h=To:Subject:From:Date:From;
	b=OaNjpJ0aocyFqY/c4YEys6o8uANcEjBLUaTEASsNwFnrKiHsUhVcVKESMoSGaqQjg
	 Hi7WwJRSCj2RmJ1Q7DYg6ChZkbLqMTrSK3OTTgAqAD9VJ9pxX3oqb6vSzJU6Fscuu8
	 X3qhnjCMxfs2WAZ4g2gcDrix8lgfLyF5k6x0OQswHLTnOq56FeJZsE6EAcesfqEkgr
	 IDBEWk3n4Nx14QS/FmbGQYDTNEzr6ohovHhKBfgdTK4TK6Pi60HJOV/7o6kYm2QYLh
	 BwXnNSOJFT7GouC/ra89l4GY0iK+YstXLVuQe7SqhvOkatkr5tEFz4ME2i1Ea2occl
	 OdFh79ZIB+PZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636C4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167067848737.29377.13465809023055511296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d64a088d69680d651584db6cdb60b5b32924d47fcbd57f7b5a927ec70f1ffe
Date: Sat, 10 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670678487

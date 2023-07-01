Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CAE717CF
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 04:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA706C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 04:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688186049;
	bh=xgnhlHXQ0jIxdMeJqGG3PVqO0CyCuUHqKfS8rXhO5cw=;
	h=To:Subject:From:Date:From;
	b=MnBBw3nL8rJ+K6cRjYcjpv7KCU6/rXQ1cNSQIGOMqVobxRAoDmkEQKrBDs1o9Yl7B
	 nLxHxkJAkQYjaW8p96NFLBGTALUudVtYoqHFE7zxO1wajqUd2y3abSr2zFSyXz4xiP
	 Jn3ejXr55tqFz2W0aDOBETFumgfOpGmmQf+57lD8irSffQNoK76mOD2DKZLlNDDyLC
	 HIlnquUK3QA+WO+FIrhMF4KaimpfuXoOZv3gWGXUejaJuikRGd7MbekvMXa2hREYjj
	 YkAXaNY5Elxp2ACtX22GJBbtN4KzmG4MToCp/MtQHkl4a1c8FwUz1WqL9UZCOp7t+Q
	 5lloy3yd7ZCPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C365DEB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 04:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168818604876.30588.16777981495930384713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fdc8ca6cb7e453767855c096359a15f356479cce1263f7c92dfd4650438749c
Date: Sat, 01 Jul 2023 04:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688186048

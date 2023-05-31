Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707E51640F
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 21:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84B5C433D2
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 21:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685567645;
	bh=ul0K7MMG5nITb1KKTw57zy6SCkTdyAnHLc54E3dgoZI=;
	h=To:Subject:From:Date:From;
	b=kSTIYbNBtsPlwu2gzB6QmjNKGGwJQwxWvFM5wCTztmdtMwJVCP6w9PYPZE2e6Kyha
	 8NUuhNVc9tvFVWSaKf5/1wecNkuBnf0XDNhn2/FvDUQLvNepxJs51hjBSADggr9Jlr
	 SWHcPg5H7IIvcAM3HyFSTICDF/gF7fqM09lFPtbnOZs8aHKOIOLyZETGswMp0CW+km
	 vHmV+2CNrIs18maUfQSwJRoGjxTr1T0Indo0K+lSqOwATMDyWGUNNjjv5LNkMqByvx
	 qz3DWmJiRKf4c25kN/JVyHOffgnSujl0s8H1D7LFmd3uaJ+Bzj5N+O5ktt0boYoe9X
	 LhZ6nuH0pxPKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAE1C7EE23
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 21:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168556764575.2262.456949701064451778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95c2d443e79f39dcf32332de8d08a61cdd86a69e7b0eda7dbd12505a41c5d20
Date: Wed, 31 May 2023 21:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685567645

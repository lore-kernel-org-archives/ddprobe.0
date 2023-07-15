Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DD815A1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 08:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB55C433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 08:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689408668;
	bh=GZBHtYCiAGLYrZgkgZZTYz9Dq3TBN4ioUa7MGwhUzFg=;
	h=To:Subject:From:Date:From;
	b=PJ8ZLQrhylFialIcVlHr8Y5CO4qbNJIHaaFB57njviet5kxmvlfBspuowVO+JFp04
	 Ruk3uBvm7XXMHsroh+IGMVJWRsOUUjXUlr6cHydtWgtEPI/TP36ALaHwcBWVg9rNED
	 lu00+oMIWy/4t4avY2HHX1wybjiTDgh2ODZo85heT7iw4gZev8mJyEKL6vxG6iLt8B
	 En7rMJmtXWb2t+lwbDROtC0pFGnNU2DTP0mabSi6KgImQE7qS8nm0Ynmo9up6HSsPg
	 iUUVvJlT0t+u0DwbwhUX18F1lrhaCmub6FsFgjVg/YBKKgHlRc5WtFfpWTRCpl8FRY
	 5Pka99ZiNq9mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1449EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 08:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168940866871.21637.13650279023986696627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad319760586cbd5a412cde1c4736aec0bb1ed4d95b2a81ce890f95575f36e0db
Date: Sat, 15 Jul 2023 08:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689408668

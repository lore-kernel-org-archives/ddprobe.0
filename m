Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238FE154A0
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 18:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB544C433CB
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 18:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689360069;
	bh=3biE9oQLIfTopEJAu9J0HEre9Xm36mhBxHNH+vehoyg=;
	h=To:Subject:From:Date:From;
	b=B/osjVPsWo6P9wSZ8Hud568UtXtjvftAXVQkD2ol+Tp2F/XP8z7eF6ZcQEyUKWH+J
	 GkpxrLhJVjPt5LBVpxWyJSP29mkdTCZw3CSODvoixEqHpsjIQK8H00HT7OXOKdMTVt
	 8vTjBdb5OL1OdftvGxwxggruU6KUshngfd6uKR8vPy7VW+Fnw1KLzyIJuU0IlRIZ4r
	 g56Yn8Bc/ei9PYr1w0iCKv4zIKfoGxtz/p/oDTjGUrGFJPmipAl5jHdpMXDx1mU4YC
	 C9rXz6KlEf2wYWjFcN7xRrIwJpUEepkpm7gtd9qtgJ75PB62ZB5idBxF86/wQ8o9Zm
	 sRmP6dDhjRQLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C2FC001DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 18:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168936006879.10562.16499830154456744515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369477dfc7e6e8fb3f4e63ed44f0fdc431228c8ffdd62c9c1cc2e84b7a5c73cb
Date: Fri, 14 Jul 2023 18:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689360068

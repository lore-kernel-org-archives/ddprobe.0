Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611057F3
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 06:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1114C433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 06:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690783928;
	bh=zC+m2rr7zMRdGPAvlLaoEceO9utlKfxJ1+0VaQLi6U4=;
	h=To:Subject:From:Date:From;
	b=EB9VFdugaC0i8PE/+KORvWLP005UoPJUg4tCNCxK9h3JG05o1KMIzsCwirnaMpHnN
	 m7irxFxKCKQ5Wlf906pVwzOhxWaPtL+RK6cp+5rtV8L0hHh3DM1YcTN7iaOY5pNTUt
	 CBzjAKW5PRBiwLkY0fxa0PUWRTzVtu/02lTR9lMDWul3TIpCSKe+MrQXYiANnoJ/6S
	 z08gBKNgpL6PgfobgHK5+LO3l+wnEWD0ZG1tAKju31yH4uNYmrOHiIW74CHghm8vPY
	 IHfzNinTgrbdoKkrsNrOABXm+W6BXKxAehob1QZxATTxsfBRPgRzotwOOZO3NrHHd1
	 sgdX2xEJhfJAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6028C001DC
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 06:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169078392867.12928.6414400116038463657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13597471d8d6ef8d63a1d3ff0704486b5c9b71810b5b76c0fd15c15d72c32de
Date: Mon, 31 Jul 2023 06:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690783928

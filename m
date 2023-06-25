Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F04E944F
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 23:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D42C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 23:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687734788;
	bh=S2irfGb6vRh1mUcAxINJlu+pPvSa/xAts6yR750Z4Fw=;
	h=To:Subject:From:Date:From;
	b=Wd0PrkcNVTO09tSyCOSPtvcwlzNnOJK4kDIfbx1HSbVHUcxoFC3ULXvpFhaxgqhhC
	 9v0PN5pTscRraK9UyPo9UHZKjKeuxV/qgBiw0IxAyphADR/i7F3YyXtkUOXpaHV15W
	 FBlip0dtCID26H6y3DO/1ilLORZIzHuZ2u46hljO+6og//xyrXn6E1C19+4C1lhHKM
	 RYBkGn5iDkKnAmpcXT/dsPuhucwy0Zmfz8L9cKFjhk5tmgxFReHmDc3j0eAt7MBjip
	 h9Y7TcejhpM4q0O/ttNKQ49ulDnTG8+0QkW+UNKkYvLFk6I325h3eIKyHnw5DYicwH
	 NtSpY+13j7jrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5299EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 23:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168773478871.4020.4189755466769836465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e8190271377dc644c429b29c4e70997c962d00dbc302f9f8458412d1729ead
Date: Sun, 25 Jun 2023 23:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687734788

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6025257B
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EEB4C433D7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664875253;
	bh=UA3mCbiIfU2iuhSftcEQaShwi7l4V47GeU4ICw6Xa3k=;
	h=To:Subject:From:Date:From;
	b=UApVFDCtAEZA2893DFks38N9Hv5KwciwefYC+t2gJG3m/6umxx0PY5KGMmCCSJXaf
	 dJi1iqQchM8Zn6mUaSz5cubILR0jx7rOlUc4pZuZOvwlxfzU0KAyA7IWHTETekkvQZ
	 g3nJ7Do30KY236xz8Ekv6mG51SpiDDOAI+YD3JaL6ZhDo3sBwH+5he0aEfLGyzQUrs
	 MNVh3ei0E5f0b26K5etHaPHtfPyOj+bMHSj5Bhwj3vFk25syLAOxpti+93RO3/hz27
	 juaRRsitZPi5gMO3eX5x8qNKQCXXowVfi929tdag7t51g1vU+MUDuAag7ArNek/bs1
	 +0YW2CTsbNNtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B001C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166487525336.17614.9844629178652008993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee786e5eb5984d57d99d93dbaf282fb262b926eece8ca42dd860fb995a089744
Date: Tue, 04 Oct 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664875253

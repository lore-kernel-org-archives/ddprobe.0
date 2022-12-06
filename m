Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94F0613D
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85AA6C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670329254;
	bh=qIG2IcjmH6HAdYE2yc67DV+7BeHE4onwyh5Km6Vc3Lk=;
	h=To:Subject:From:Date:From;
	b=K4Gd1gUsaTQvum6OGBnKtj2twgIyrScI5JkGRX5kuYFJcVYSvxhFXqLEma3m3zIho
	 21U7xrTw1jJOJSzcjONf960m2x93KiMTO1YAHKcEM1UjjLsSsST7hSTrkxRKW732dG
	 4H717Ip86D9QghqaBY2sUIdE95hwmKLEY+yCM3nKDp6F9D5Y+z/EfCucVBN866w2ww
	 j+a/mvl9V4s6WBJB8vf4Uw7BZpcquEqwZw72XFtGTrZcX/jTfpFo+ouC30GmssaJfj
	 UWONUwtHwlKKxxERepINnJBn0SUTT1Dn9/1z8mWGf0bccl7bWWe1dIygbBgSFMpi6h
	 B7VT1Hww11XBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67404C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167032925440.2338.11044802212429530440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e80ab2f65454a088ebfef8608961b0fb02adcb9dd99198be3bf12d3de153484
Date: Tue, 06 Dec 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670329254

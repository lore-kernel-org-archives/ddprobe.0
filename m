Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE2663A
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70393C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663405253;
	bh=+/i1OaW2P+pkGORxKsVCygFtHYCdbwjMjF9E0fQyDKA=;
	h=To:Subject:From:Date:From;
	b=u6gBXvQiJw+FuTZgbWppuV7oGyIl3+qoGJu4SECJ49C4Qa7KkroWtMmxEdtuCion/
	 rPecf6UyctE7zqcCjiOLOri6rfe/HDvNX4fskkjbuMsHd9jiscLpfZ+Eq2T4oKwL+s
	 7lzGqjrr4orqt4qMyfvj9ZpWfw+9vmmzHwD3uLrpm8AWzqwVRfb2CKpC4WvZoPEDKv
	 WFDk3f8YLkL8s8whzPYSUgrrus6utG+lVg/J/kF51puhKHFM3tUfROakujBf/6NRVh
	 lhYoz9XUTa9izhsPpM05ILRvAqQzCnUfJszD9/7ylwM9hISFycGHKvTLbS2QhUO8yZ
	 fK/jpXgJNlZOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DF4C54EE9
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166340525333.21933.9871869786220502619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd1d601d6262c85dbd8675eb5f4d692c87f3135a0f4c8efe554425a2973425d
Date: Sat, 17 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663405253

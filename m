Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEDF379F8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84056C433F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673544087;
	bh=SBJ/ZpK+c+yPjCW8UoNYKfVNElL26QPX5dJj1wKx5LU=;
	h=To:Subject:From:Date:From;
	b=jXJOqGkK2QPld10YI0nohBhvZBD6DTsbRYXNgtYPyde/QSiYhmaCKNv6EbJETPCDT
	 eIZ0BUe+SRTXvVToXaG/YiTz7asBzzDfSUDqYHnqSBbMRU5CQ1zrWOpI9IJdINkZ3w
	 fLJs/2TnnGpj+Am93KmITzN9anWsIA4LaP1uQ8Wt7sHRj5cs9rWf1DZyesEJNnMtVj
	 +ElHv2zIcyKE+gd1FwP0Ss3aNReLocvwe60qVaVlmfYMjBMrRhKuPbOZm4jaVMAJYT
	 Zz/YX1yjERFKQOMU4C0wL69KUIaIaRcYPJMZZK9iFNIFixkqEigM6Yoyc2hQiiSD2L
	 QiLhn0TZXNynw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A75EC61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167354408742.22274.15190253639936078171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613191b3d2ff1652a529b8ab1e5df7c5b56a1ffb1ae272286ba359c0efca9f5c
Date: Thu, 12 Jan 2023 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673544087

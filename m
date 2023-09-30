Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688EBB66C
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 19:06:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A0EC433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 19:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696100768;
	bh=4Q+oH23CncdvSJAuO3SmX0jtFrXfEZcIGhu0U1xY4Xk=;
	h=To:Subject:From:Date:From;
	b=KT7wgZZm6xzfiUPtj0eG6xkEYFBhZQCBvW+pJ74iOOiz5B9PJ0leuISeaX36Uobd3
	 O+tAdFn+rEun0hVO5fzI26BEMvPdG19/DYxCyWbTh50f/zvMDKUzgOQmRPZrjF5ay8
	 WKRjJvAG6ZCkiAhqxBLIyYZkrTOmGJlKb8TrQZkwiybIEvD435Qh9lppvd3B8HU6+J
	 kF+tDNwu1g3K5Z7SuuB1Mh6yqiM26UeS9S/EXQKMpJC9qlwLXwOyis1ueUagby5aS0
	 8Ru4/8RufcI7nHnGeTUjDlpXPjQJ5pMfpC+ND8mFO8ei3DrCTaYa+TL8mmMFD62IdE
	 RcIrhQ+aUFkCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F95E732D6
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 19:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169610076868.25960.12519228749812939574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22402ed605e3c7574e4cc55bdba4118931fd039136c40c97736da9aff0de8851
Date: Sat, 30 Sep 2023 19:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696100768

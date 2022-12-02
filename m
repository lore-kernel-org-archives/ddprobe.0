Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1439186B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76C28C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669964454;
	bh=Ke6wOxiL23h7IXtYG1hxboWAES++yUjxef3gcENDywo=;
	h=To:Subject:From:Date:From;
	b=CiU/tUJm0eoJFef9WhimRa6ygfpsK+fBaEHNOHc2OXy6ttsm7gp7nWKL8FMAGCwbE
	 /OfUW1xj05dMeJk08DNSD1rPNy+q+RpaPHZMPnXzyfwiD+yC6vCaXrQg3LOInym/LK
	 3R5+3AYoHMWz9RYlaEpyKkxvAKN/a42yvsgnjLS1akSLzsCjHzxkyAeDtCBCHvNOBd
	 1d+NGhUOqCMxi3mFFnOTOx53khYj1JMD+Vc5k0+WWj7+4qEOpqSpSgoZqwbTPbXJgZ
	 H9w38arWDHRQxCdKvhUtqH0Odr+ooqW6LFyFamCWrBPNwgCi7OYOXAgVcs8PQnsFSD
	 LmWGnfjoSvxnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B748C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166996445435.24055.1660904631971062503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b32823b620fabc1d681c6fcdf54bd5ace62d7f5a22f869dd9eba93b093e1ae2c
Date: Fri, 02 Dec 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669964454

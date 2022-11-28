Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A4CA461
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77375C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669663854;
	bh=AWdJ+0G+NqYQHtK17lo5OoIfkmWxImxZ4UY5nh2tXTo=;
	h=To:Subject:From:Date:From;
	b=Pzaqa2yq7XcyGZjV213ND950YpM+0ywEi0ETM0grfXftgk+X3ymSUm2lT53JemHlG
	 JmruQsWkY9AuY8kAYRHaObKKM1aFmNSCWZcAb/LtWDqkDC1fO0Cv9iWEd1Vq7fVT51
	 xxWltDqbESP+cdaFtC9geyeULwTzXK+JyUGJoGcvx9C6ShT9RiLjH3Q9cQH8lRx3Qb
	 Nm/Tuayc49Wt/ZsHL8Uz22Vl8sr8jXtSx6mZ2OSduCrZ9wT7C5G/naL0Jft+01uc4F
	 6/gSBweT0FJklkfwDZjhTvydlROfu8VSuW4iAjq0Jokxue1P3a+H1vW2tKrE1+wWPT
	 XYodxchYMYdEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 590F6C4332F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166966385435.10365.12520040293463543245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb94737b2e24d472beee5d4372eaeba8864f5cdc9ba5e208ad45968839271c3
Date: Mon, 28 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669663854

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECE17E9
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 02:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14E7C4339B
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 02:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683859505;
	bh=eozUHHJGnGIgCq4Cd2zdunJZBqCNWRSmsBpOJLdT7sk=;
	h=To:Subject:From:Date:From;
	b=P/ytXdl3zqE1XdwzhWyzonYTWJ56v+MN+bOfraNt9rANR6Gi97XmEApGYcEgA2MW3
	 6VZmjOnekQPELbXhddVsk5I2FAkti5IWSkCVtKwsGFt1m7zofWh29KhrKdyvX60/Mj
	 xmLec/srXRsGbC741SBqmqzjYP9l1zD/NiTaL066rYNcxCu0G/B5YwEoz807u3kONs
	 KnQgybkMCa1nmczZxzIEQkSdV4S+al4TJZGAiJScNBpITWYiipkk6W9EaLN2LTWtws
	 L9SyPSvNtLJHPWAY1XJSRgAekUBwxJxciLgsTOTCH6eZFugwICn0x2ha/UAkiy5FXH
	 BgGrvpu9jWUPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F0FC77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 02:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168385950572.9925.7146748351893526893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef41f60a93ebd615415ef4a8054d9b9be54b1e1c30f3ae4fbbe0b7bfb84cc331
Date: Fri, 12 May 2023 02:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683859505

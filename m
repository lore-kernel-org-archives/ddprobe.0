Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4056817F1
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 08:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0CEC433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 08:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679731925;
	bh=ahWmogqN0aBP0TgFoTx8yPeN4ukDfSv5zREm29enDa8=;
	h=To:Subject:From:Date:From;
	b=C8QIRKYFzI2RPQEnBLa5EHp2ipNCi3VeWiEuX6i+Zm+7GUI4XAkG7uKy4QwvsROGJ
	 4ury2enjN7sNYKILYh+KXY382NVk1dY1uXVSX3FuFw/E/XSeMVuUuGMm+59F58HUY9
	 4Ed3PseHU7Aq9fTVzT/xYReNtVG/HhXqBvij+LZfGBen4cnk8uxw/6VvptjvCm5Z+m
	 s/AwYhswr+u81mbLarbp4KAa6scHrfExuq7IFNyEDVr3pkEDLDOsq9qntKO3vplyYN
	 6y8YrSIb2fbB6XvC6ycFXGJw9MsMG9lXeCAPo8ODI+QgYB4TIKSsLqwlBQETu8l4ZZ
	 H4ZQJt8KRAFcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0693C7619A
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 08:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167973192577.29344.7232304680616538683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb797731cd00b2ac052527045fdddca5f6dca11d527db2133bbfc64c82226e08
Date: Sat, 25 Mar 2023 08:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679731925

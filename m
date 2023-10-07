Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B04C17EC
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 09:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwetrSmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4035C433C9
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 09:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696672028;
	bh=aKj1arkbO1cUZ4XxIy+kcjj+2b8d06U46GXE3JQRxX0=;
	h=To:Subject:From:Date:From;
	b=CwetrSmSsWHACM5pQwgYqF8XICq0aWR2IQKa/CeK0yTPPAr1QhR2X1jRJm8lR4C3n
	 cqF8gYzVml6SDlaye/6YzVk0mz6+SFGqVZuaAsxJQEc9QrY3V5SzEOGNk/4elHl+Qt
	 9p1R2SP8aZpPIUbtWzMV5v1+A4w4Xx6l9JV9V/lwsthFvESPABHUGGk4fbICC5tHtP
	 aFNY/tC7QXvJcFbSHiWN302aficvwZSbnEEpecPSyOET70Q1pCbqtaSsBrSntLOCcl
	 OWULwu2WL9Yxl7bIi/xbMBNQI5zX3V3W2agsWz9AYtM1oDV3GJWlf89sX5mXy+lpOY
	 SNWn5zPDbEXcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B286AE95A60
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 09:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169667202872.6776.5385188007433767456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dffa50a71d1c93a664de092e2606e08108167399c7018081594decf071c6a89
Date: Sat, 07 Oct 2023 09:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696672028

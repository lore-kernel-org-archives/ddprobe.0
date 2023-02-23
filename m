Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410AF33D6
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 20:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9068C433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 20:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677184505;
	bh=ebLg8YbOm2pqyemoNthj4uQvpC8IC1QTki+ToIFV464=;
	h=To:Subject:From:Date:From;
	b=aA6w+uSJJS2HSCczOOPC+F9OpGj6gu2cKSfJP0U4wDBazIrEcFJF21EVXDV3gVIk0
	 +ew3vWRm1lknvzYgZI0dIwPkcKN+2ddfquPcS8A6dK3xpdvQhmCcuLMGuSGzo7ffNO
	 VSRdlV3rdY1VhJEe9hjlXzhLjP5cXkJ2ue4wsmC3XSMRSv4hHB1vb32UYvfvreK5hn
	 Kt0UELD1YbZcaJHUHudjWGEGmyPAljR8HWMA+wYul7RFYz9OOZz8Lb5B0CNKajVq9d
	 MNk88tLjjy1qrDYXKRps3J4IEJQZsLKCCL1z0HmWrDJJWjekyH03uEjYdSBSbmfQ4K
	 RoNYWwZpp/efw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA5F3C61DA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 20:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167718450575.14690.14465268308014498033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6559a409950a94845bea020dbae7d724d8250d74c386685ceff4c1e79e54ccfe
Date: Thu, 23 Feb 2023 20:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677184505

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA76A56
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAE8C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665915653;
	bh=7mz9QL6RJcWhDmGieshhpCjoC9iLGhHabh48e3mb8nw=;
	h=To:Subject:From:Date:From;
	b=l188+ukp+PpeyMH/T4fNcrN/F4xwqb9ndn35H/N+AnxPSsk5/39JRw1xr0CtxkPra
	 TK9c3CNsYrkDhB6O7EjHt1SSaSpM8ExFBIadmWpBcaJxvT0zwUPWFeAQpytnGGLaFc
	 z9iKKyNqjP+wU5MwgZSUfZmKZPrAK4Y213lHsvDd/ROWvNjAqw96WNvEFTzOXhwjL+
	 OOBm6ODbnjBLRUQ5C1+Fn/SJiqgx9218nvegHVpeSxgO8AYzXUVe37ieNbHHqpKkm2
	 yNBo+81zP7W30K3iAqEggdS3OHoor6dmoN+gkhD0+zYnkChw1LihZDBqXxl1AvAPvM
	 a1YwFpwapq7XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53318C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166591565331.24532.728554681240535858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a7263a7d02cbc19d8174bde9fe110c6729c72b12980a78d9f764db83220f61
Date: Sun, 16 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665915653

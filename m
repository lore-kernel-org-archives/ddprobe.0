Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D210101DE
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 15:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C787BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 15:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692977648;
	bh=ejyjxHIBQZbhwviYjqkUZHzH5JhVIicCffSk4MrS5RA=;
	h=To:Subject:From:Date:From;
	b=bkUyzkc9gyGKmUexoJdqTnJoFo1CkAFdvaCpjvT5qzMk0HxmMZD7p214O3f5yvNnh
	 lSucpnm1HUqBZ9+RZvYlB5aVf6H5ShN2pitm2UGhLj8/udgS1QkaC4l7fKXC2WpD3P
	 l8ylz4jBk5l795VR0z2MQKVDQLBo42WKqcW4sPJm9zoSPcg4tBhPfa3qN2qtgu7jRs
	 /0H9SC9fwKyhgh6ZIGjZF0Nz0nIeChlDkFijfx2QyhtOo4y8CIp8T8JzhoE28jK8jx
	 XzMleExcisNsQreCb6XGXUFNqzqlfbZcNRu+S0R5QWyY6xz82sV+ET6Kco6AI3Tfpm
	 KSFD0jzBzkM3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A959FC3DA66
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 15:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169297764868.8996.3586865396813931248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c006afabcf692825029c5567ca6598b48d7c8ca37a610a3a1f3201a360bb19
Date: Fri, 25 Aug 2023 15:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692977648

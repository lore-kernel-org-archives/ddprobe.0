Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA688F5E
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76CC2C433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667158854;
	bh=UEMLTdJ9yGtdpIx883eMWfM+V/8jtqXno21yWDSxp68=;
	h=To:Subject:From:Date:From;
	b=GUPuDYzUvFPraL6xZGXs3iDYBU/p3tCCWgHnYSpG7kx5igvFfVXz/80tdM+oXE/K5
	 kV0MQv9jC0uVPMF5cYxKPSc12rULA+QxZ4zO/M0cVMcxyvMUWe45D+rPvlpjqWSyKK
	 4JpGEBqxChW3VptTwP/I4Stli1f+DCMo45aloRPNgd8qV4XsnDn5Rw1RQixe3jrUVk
	 EhMobVeYjW4A5WR9IVVXmuHUcS/45IkSg+18AXQGpejOjlODI7yc12WXvRYzwUfyUf
	 hr5G/AdpnPhHAupqWn+2pg9tYUqSi2FfUxK06sABc3mmXHUgKHVzmCg8Ani+dcgjMX
	 WfC/k9KeMD+6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B172C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166715885435.10745.12795977091936620894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86f1710b53531f4ba5b8d54d79aae59f7a6991e700141def8e5f968efd08808
Date: Sun, 30 Oct 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667158854

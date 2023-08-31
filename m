Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5737411CB6
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 17:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6AE8C433C8
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 17:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693503848;
	bh=O0ZNQBm4H7ShqcC54kNvb/9Nns4Xgm3Vzb/kmH42vcE=;
	h=To:Subject:From:Date:From;
	b=SaGSdCsdNd15UcnfVnicVyc9HuPXPPkvS5MV5OJU/VDoVxY+CRpmaaWvFeg+heJ++
	 +d1t9r2XN2C5BAZLLoQkqCPfH3sodFZUzUSjrXpNUPlRLGlOHsN/TXavcifvs0Y91j
	 Bh4hhaPTkFnZZedGy53khGSZlNcfouhzEQ1fJyOhWV0slYck/IzLQBSwZ0eVEzheac
	 XUlZOgmGGD8aFrLhHEjXBzZYXsac0/idHx9+A4mNrUiZYOFKULcwO0dL8UFlhZ+opv
	 NiRelB+9MMAIoPxl92xkRE9ZMPn6h0N3TWlXFKo9ffNQ2yYr9RZ2tYRwQAgTUqfdiL
	 DxV7uE3eBO9Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA31DC83F37
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 17:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169350384868.24456.9243422455369872864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdcd2af69378c6edc9cd9f2a4d8906999c74c5aea2d12e57d47b6f0c49859f29
Date: Thu, 31 Aug 2023 17:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693503848

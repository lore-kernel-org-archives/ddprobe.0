Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCC423A4
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 07:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04A15C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 07:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682754306;
	bh=EaQ9QkCz68sCJ0R5qLTezeJJz961URRCdO7VJ81sQEo=;
	h=To:Subject:From:Date:From;
	b=U7WRhxCgRzO3qxeuZzgb9Vr3c5hd3bOVt7hipUlJk8kPPKqbE/LiVLpp+mfobFmA3
	 ibfoihE3eOXSov1VGsOz4yQhs1v2E6CgprdVvGMV6dCqdi2w3yhBHBgwqoj0ZdAXI3
	 +k3u6m4Y5Gc0xmxmeLbB95lDs6hVgW5w32dF055AVT4y3Ej7jv+d9GSxGqGvXtEkhT
	 dFc0ZAoBkhg2Jdcsu+7DmnJxVN6pnloCPD4MsgZRGnjb5FgUjPFc0GChq7Aqr76/er
	 4vzxwtU2RIhrEnr2zkRYU+v1iyqLQ0dwShQV2zsKJtDqXS1BVMawIkmga9/qhZ0+CG
	 YfWSFnh3A3A4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD340C77B7E
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 07:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168275430582.9594.11500328596262341849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e1c9431b82a2ba27b021744fb8a843d47520163e8c4696304d83751801e4cc
Date: Sat, 29 Apr 2023 07:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682754305

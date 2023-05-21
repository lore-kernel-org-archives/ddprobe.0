Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1FC8F61
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 19:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0784C433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 19:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684696985;
	bh=vadTTWcleQuwj7Ycpfrt98zRuJ7k8ZAGvyL2OA/EqlY=;
	h=To:Subject:From:Date:From;
	b=KK+99ixMnVtldabmiBFLV0zymVTCJYEjtQLQDsnOer/HA/O+lqChFk50rslaBwGZa
	 EmZ131afq9F4t3ES60xsWX1Cu+520L5LIlJm1xyfrCXHgpo22MjpYOZcJeXO5lOYPN
	 6SifvPOmagwePP2I6Kfz1JLwxPakkqYtMlfNGOB9MwEvklC96Mg6UQW08zxtIbZgvd
	 kMK0aQNPZmN1zrEufXG8iIUhHpZMGdWL9gv0m6IYcAHUsG2zspJDHVSCopp0FIvfLd
	 adyq39HeK5SSaJxfUGfWGt6Dt3gmYUM7nWY26qjRg5m9YjWlM3HmHgpe+i0PxwVLdv
	 +WnWutpNY05JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40F4C77B73
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 19:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168469698573.15526.12259889331295357610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb64be9a1d1ed3ee3d23df44d421893199172bc2ee23d82903a9c76318dc489
Date: Sun, 21 May 2023 19:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684696985

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E92D2108
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 19:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFE3C433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 19:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690140728;
	bh=MrZJZnx/8qSHjR3xx4KRZiyXCCHDbcifiuFzPMQN4qQ=;
	h=To:Subject:From:Date:From;
	b=SFFav/Vt94x+lKGTpJwCDeQ89FHjHpxhQicvi0Q4xb5WZe04fb57a+0f0R9IvZyom
	 CjTPAkheI7KbBXzE1GO8aSNKWrvJCBNEjFSAAW/QpO+FMw/UmiCl8R743HuhELJuSj
	 oe3ZTGx0eUEd8O4a3SIJsqWDOWAhpD3qPz+O6O+fnYd7QRBNfsUrPevnOMAVZ+qov/
	 Ry6cXWzBwrLSxQxh0hP2LaYKd+4NJyVC13YNq7ozU9/PhGICH8A3DhmFVo/Hob4iB4
	 38dLlXjQ+TrHWGylTJpHF6kq+YbAHoZ9GmtpdYCIlh0zALkNQH5zISMkpfhARawF3k
	 lb67iFEZ4z8Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0974C001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 19:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169014072873.4988.13249220896598648619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90461493e43bbe7aa35e5b4d23f03af5bff25bf291aeb71339c9fc7b495f78ac
Date: Sun, 23 Jul 2023 19:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690140728

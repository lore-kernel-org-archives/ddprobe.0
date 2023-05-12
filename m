Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EBF200B7
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 17:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9BC7C433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 17:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683913505;
	bh=A3XDrVf+X9iWEXrA98wizWy31T4crvbgH1bFqApfJII=;
	h=To:Subject:From:Date:From;
	b=XzKO+nBXC2Jaz0I0+pACtlRghKuvSFZqvRYu85aIP/ClapGpk+DF3Oc8ACwM+ps5t
	 ga2HBTgX2hgJcsN5Fy6FSgOqM/I5cPrgvnpXpusU6AnhmfBViT0w27skgt2gFcAOze
	 vU76UbQZo0/MAKuu5Le5IeQVlhGl49DadZ+8rAj1K8NlA3yTQxyZLA0eBOpS4ZHg9Z
	 Mh11qsQOhN6fxHMJsmB1hVpfBbJvt+wjRfI7j2pzQtoYAtcWhnrahisqJ8ekQcszn4
	 UeYJNDniJ7sj8fg2aHrXED95Tv2o6D6Ouk8nQYxZlgPe8VU5iAN9DAbUYEi3Qru79u
	 nmeVWNRuDiEDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C59E8C77B75
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 17:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168391350579.2170.5130955321231763577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2263849f2961463bf49ddab554aad343215e0eee1f8903619c18c64ef2c032f4
Date: Fri, 12 May 2023 17:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683913505

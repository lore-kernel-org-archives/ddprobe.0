Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7D8733CA
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6645CC433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663322453;
	bh=lu05lgLf6MjTU6FvwwERuNUq3WGBwlZ6X5l7luP3YDc=;
	h=To:Subject:From:Date:From;
	b=QurLF4cv8xm0yPkECSR8GEE1R7ch/2cnexCpszDyrVApq9gXWUS+LpkaHjGPzi33+
	 ULoW78vKYQtHkl2QGwhB7cffJJCjKBsVoD134BXJQ1Usf2Q7dPA5VWCyZr50r+Dgng
	 aL9AKmhlFREe1nGMkFbc/Eq4MgXe9NZl7sYKiIDUNS76QQ1O/jXP91fkQ208CzEiEz
	 bcOAZv10rcl11f+mwtZ9yV2JpIlqzhne1sii/4ujKlIzdnFlsZK1qtqZt9+6xowXRC
	 JzAsv6sxNLT9qSnCF1QeRmlsdTdKKboUC+MGjwnFOP6aqXyNjQPeSoA8yE2iaQjKF1
	 szJkSVbHX5uRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E232C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166332245331.9405.4407424587749867224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa36057ead77a09ce7b48a37f959f6d713d9f07af0755948ae6cb8d403d6c8d4
Date: Fri, 16 Sep 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663322453

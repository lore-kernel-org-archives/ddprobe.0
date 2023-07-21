Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A749A53
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 06:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5440C433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 06:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689919928;
	bh=iRucz7Txs6lrRGjJC7HBY10AFrGClCNiRPEwkMRSDiY=;
	h=To:Subject:From:Date:From;
	b=Dst2L6FHnHmHKWwYgGRragyFXELxLeHvN7PNP52Zw3cJVdNfC6S8qHq+9h4T+MV8d
	 hSEHouNglw8KHTVuIobNXcWp9zRyUh+ns2Bu13M+o3cFJDxnb/t2UqX+rJV9fz0eAk
	 5tg0W5Kex+W9JmfUoAamatC8mW43CcAYIZSLVBjI972lVI8+thwmo4+Q1gk9kg17gH
	 Lm+IIvBPLqdR4+dYMnf6HY/Wx2EZjklBuFnsR0j5hfKRBMEpDyGO8KSU6/tov+2sUT
	 NM8j3J7jZstBHVXvXdX4gi3sJ/vk/OqbCoVo1h+qtZqNfVD+pPeBrtzZ+DKGW0px/h
	 v/EpZhxilIk1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5AAAEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 06:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168991992866.14179.7540084679487584235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1235d3037e4470351e3c816c312f961947efa69dc0baee6070baa4dc16593834
Date: Fri, 21 Jul 2023 06:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689919928

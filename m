Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D09373
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ECA1C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665811853;
	bh=om+PYizU+9tro6xzW0kGodjEsEcYxo3sSL/09PcEFL8=;
	h=To:Subject:From:Date:From;
	b=FFnki6rBl3dkexwyFJKmBcdeYHipPzPAS3Y8RoiowB0vx2ufrS5INLY7mvWtgyQ1M
	 XPbr/i0oN1Y1b4F8cPXtfRVyrMOATTs8EyvEZVueLV6JE7pMmxIKzPjBZKzKLv53r9
	 sTkeec+nbQxJUX52rdRJBlP5iXnfW9t3Fm0SCmTOI44dwkSQ6oSkzyWMgu/xjohOAB
	 bLFsiGO04tr4GcYhViz4GeGxVc49R+rKCjystc+IOTEx/jXrzR4cHCoP1uZlleVtpG
	 pvN51nXOTjTeuiZ6jRm7Hn0iEOKi7R5eFItN9+vAPVJXpvs2VUbWhT8oiVAZtyeQq2
	 2/XlEIg+78QIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE57C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166581185335.7359.11572514563961555998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4112ee20f4eb27c6113049e65f127488753c7a1b78312f615b7ee4e2dd2586b9
Date: Sat, 15 Oct 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665811853

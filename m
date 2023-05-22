Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FC010F4
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 07:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF45EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 07:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684740785;
	bh=tdq1nQgGq35L0auMTdBvZve+6aTdXiQ1h79XRlZVnLE=;
	h=To:Subject:From:Date:From;
	b=k2AXomfNX1Rzzygnl0btxIBTjvb8CR2qZYVaUpldDAfLVUye/GWc6/gfzIpPCIrM7
	 x1SaPzIhBArqwVxdUE30x5Q/JhZ4zNzFeuYa89VvcMc/EORKTtY3wmVFVbI0k/1y6o
	 qm8gr8rxjxg4R3Eax6UysQTaxIPlUuZ5T60Or5xUuTzU18GWnHn0gLEEWsjiVUHqbK
	 2mG/X7dFrFYTi12Ucz9ixFVZGqgulq1Y+TGbWwggtXeMWNjMIodXlbbFTOyYLyn1PA
	 7QnS6xozv+5buRzG+3iOd9PH4SIOA/w6qukw7s8qu89JxQ7a4hC00QrJZOpjv71D4j
	 7KFjFeyIbjB0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF0EC77B75
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 07:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168474078575.9410.1559492411589138537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dfac56fba131ad516cea412038771cb92feb16e64922a0b2abed045a03cb7e1
Date: Mon, 22 May 2023 07:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684740785

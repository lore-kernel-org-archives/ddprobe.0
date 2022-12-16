Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BC08829
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F0B4C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671198087;
	bh=iZyvQelXQphn37dueY9SXvyCzXb09gc/5f/Z+lCfcJE=;
	h=To:Subject:From:Date:From;
	b=M2G3I3yY8Qz86JmO/LP9VlFfMJEocilUk58G5TI1PAzNNsV1wiWKtY+Xv0O9cCcTX
	 qk+GNLZRFUSIgI7qZLpq2M+YnsCzZX6uf6jOkALVeKRS/Mgg7o/vW16a4C6me0q8fI
	 k3BUmxtLAt7kVdmS7Bdndqulrsmu2EB5piOaNVwpMK+TcKN7bP9+Lc/OZRNIo5SDoX
	 0I42LAJotc5XmSx2F4iy/qyYlS/FlsTv6Wj6fr/YUT9kn1Etsmc9MenWh0ybtYinpu
	 6O/SLpgBNuH5l+Ngy0y7hskm53Hopeg5aE4Os3gCG8CRIUyueGOgPuMsuB6kh5/I3b
	 hh8r6XdT0vZYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61222C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167119808738.20669.6722755500569836652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79bcf8213f8092754fb9d12682452130a11b73830f59e7298ff46f099096567
Date: Fri, 16 Dec 2022 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671198087

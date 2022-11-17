Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC905EB29
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70A94C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668673254;
	bh=6AoNeeKz507AgfDcxPCPs5kOyNlZqf8iuxXGuEF8mvQ=;
	h=To:Subject:From:Date:From;
	b=jV2oGbyWSovxFiDqxjrKmqfCvoGFligxy3GTLotZYY2MlViTnJWpjTZUNm4WK0tNR
	 /+XR+S6g0wEzyJlkcnkcWBABi5NyAXoSl7GAl/Y4j+714mOJDK+Z6uyaqQ3VOhjL9Q
	 zAdWFM/LHzLKubJyl//qWk26nKoCab8YmSMomkK/zG5vTbzYacoDMIpd5WpfTyYiIO
	 AhBPoAmwqfoKtq9bZROjGZSJCh+bIbpF4O/tt7eBXE2QeW3McgkvmrJKyRsymNJfNf
	 GXuZg//Gn4N2c5e+AOijgxdt8OwtNQArC1isZvecbWmuA5SYw3+SrsjKwD96e4Eplq
	 x9uGsrP5W8zvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52520C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166867325432.8980.16661540290367858912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c01f3eece77bf9f290d1765db877ae2e4de25959a5c51750f395faa5ac40d7
Date: Thu, 17 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668673254

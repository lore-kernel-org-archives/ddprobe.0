Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B76C28E1
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 22:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7081C433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 22:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675982525;
	bh=D64Sd2Gbt4A7JXktikigGKKQZ1haQq8/AXw+32+PNk4=;
	h=To:Subject:From:Date:From;
	b=cH4UW7mNfs5zQowvX0lPhTiwZ1LZOW+RADldX6wfOc92cyOp2a0hY6xF4iAl5GBJC
	 Y1pfvKU5wi6QxAJtD97VSS969M0CsrbnTFnHyWAA+r/YBTTf313o058hajnRVTiM1/
	 QNvFknDV2SdAc1QzFOrV/iVS3LpOUfuHIdANEHhSYP4JTEQyp0nAeUrYtMdqoQIq/m
	 UbbZ5qqWt2IJf7kDCexCbYve//Js3wQapMy8im7smMqQpeLxcotCVywOsaDrMhnM0N
	 w599o8qZs0FmoNsImDD+DuENTkjcgUr+bMNgFQkh72vFK1V9AvpDcXcOr4Xde5W0Gn
	 eOvAJ0eE7b2Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B86C5C05027
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 22:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167598252574.29095.5552373787486812288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ccbcea7ccc86e3085603956b837737e0ee8724370f6d480fc2e5abf9ce9f28
Date: Thu, 09 Feb 2023 22:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675982525

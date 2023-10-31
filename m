Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2657216418
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TU9ZjaPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8651AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698768496;
	bh=3VfolYbGpkUOl4ugOoLeaFdHgfnz+GaBAkNfdKoo9wA=;
	h=To:Subject:From:Date:From;
	b=TU9ZjaPK8Gv5bMl31eJhQLPP6E5U9c9JneEz0hMASEpYVMhB1ShegyKSZAmmSIBBS
	 uKmf/zP0oct+GgPMOc3uZwGUvN7mrujy+skCX9l173fq751saZ2wde4BiXwE6RwHUy
	 9FbP48D8+uxycQGnpNUPAs1ctOZ98/W5NCiPboY/SwOVC273DYnUxTeLvzm7NfkzdK
	 EufoOkWIvRsDcuYUwg79JlbxfT1ysd+1fqnofU8u09/xbtJ+zDrhqYy54rZL/NMKRh
	 tAzn/gwc0yVKMVxzNahsM3Aok2y8zNQ6xL9cNVDq65tTHFMgD8WNn0QguP/CYL3+zN
	 8TU3hExV+T6GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C0EC4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169876849640.25865.5773973858586711515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42bdd2ee0e96080c92909e6b6c928063182c626795960a0bf70342afb470aad6
Date: Tue, 31 Oct 2023 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698768496

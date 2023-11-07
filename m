Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3652DF72
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f95/4Fqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EFACC433CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699344496;
	bh=wJtdWCC/4Fho7g7sjiC9G/9ppLELRJ1Y0EbSi6/JCbI=;
	h=To:Subject:From:Date:From;
	b=f95/4FqbVzAFM8t3x7nDORj7L0tpwNsgxJ//UACjPPxD+KS3LU5yClrcPziOPXxf+
	 TnVwRYDxlyIDdMfZKl57blEB4iJ5geS4LABCpwEhEFSq+c9M/ZqAiunzQo4NZZVM70
	 EEYEPc2mkdmbnD2Jk+TKZwGhTEkieu2O437YEINu9lvsbXb5dxARi4/rKn9YmmgWkk
	 W3P1trwHFIqZg4mVwoEg5+GNJ2NEBKiwi+Ldnns7RTjn7Qu/WJU5IrD4PLrXWqF4oJ
	 /HG74A3XvDx1AZOSMcve5lpOajpjplFgslF2fxYztbd22fGnqvGA073SLCsuJuu978
	 r453cHGUG+M9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612FCC4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169934449639.25091.108707936469313673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16904dfb4dccc39f0d533b35249e2bfba9259099410bedbe1658584f346a4a60
Date: Tue, 07 Nov 2023 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699344496

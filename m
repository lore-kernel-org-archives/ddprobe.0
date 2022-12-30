Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D624923DB
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AA4C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672407087;
	bh=/hRhK9J0Ed8a/kghMFLB49b9KnpBXi1CkzDXDACAz90=;
	h=To:Subject:From:Date:From;
	b=gkw3+UpVwkzT/rb50hSxf0+j2z8e6a95V77jEJA3zTq0T5y880HzyHliTiuvVCz3Z
	 Tm6UGA1RJu5MYgLZYhV3rp3YqR6Oqdxb5mIO0QApnKNRo+XN43Kllpp2TkMbPHpYaE
	 ezxL0ZI+0M544ih060kAawNsCUBmyI6YMNrABOK99kS7adZQlXfxqFOMMOMc4FEp/W
	 NKDkaZPfSGh7aVAUtKtXR9tN5Vmhe3GZm8kBupOy4MI3JdeQTujBnlnVV8Z/qD8j/W
	 vMOA9z7WOK/KG0f00Ib4fcVpdg87e4H5ReokiAe2f2/2mzsqZCNVfEuSCKju4nPbvj
	 uPv3GIJN7g7lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D1CEC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167240708737.32705.1395005938758399592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6921f122472b6a0999201e0c7ea0957a4f147af024d33226f0403cbaac037bca
Date: Fri, 30 Dec 2022 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672407087

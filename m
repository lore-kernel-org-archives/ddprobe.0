Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9007E6
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 01:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2FA1C433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 01:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679965985;
	bh=wGcMNv8LMPgBqdO5yFVqNZWUK+ZT4Gbpa1z2XaZRHu8=;
	h=To:Subject:From:Date:From;
	b=QMSVeDImRqJQ2qlQLBlUedfKRzn4eXy3EtNE4xCfjbbHC9kh71X4p+I51/gGLCreg
	 Z/Q0PzfcWvkHQDxoTCnqjuHXJgyuw2wQWjFhBsqtZvhuFaqUcCz/eMzu+jx5qdjVyX
	 96zjJaokLk2w7bMY0fUxkLMf0n73FlDcagPi8w2XRUz5M1RUy1ZaEtP/aclT3n8Wt/
	 I431ms1sHtauVe3dYCPAIPnM9/dPUTjTC5VRUAvyJ6HVVtrDus/tLwdwQl55IOS5cx
	 8vpHDUZEVeWskgeh+Dnm4KWfAoozPwnzco+mwjBdlVxhOuQJ0oVY8qko+Ik9KGIAiz
	 qCea8CWu6LNQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA754C76195
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 01:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167996598575.6837.6917790635768293527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e39d0fdaa2bc4e03d6f53eff34f8a7ffe61206ecbdb7280d5e64f58e766dce
Date: Tue, 28 Mar 2023 01:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679965985

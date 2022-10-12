Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47D417CB
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B87CC433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665567053;
	bh=zJIKJ2eWh7UxCOzWSeC9sLwr3AcdhsxQ+BcXTOu1vAA=;
	h=To:Subject:From:Date:From;
	b=kcoNy0+AVXrItE6O4b2QfOeufp8FxzdJzBFqo8iG3NdvKGc+oQyh71DeEjlitg5Yo
	 E60P0kFRLUqF4mLcwF3wyUvhbmkmyKBnw6RGAITmYSxWjuDGlUxb7VrkAy+c0plpJd
	 qWLDSEIj7QYPsxrVtg8NCgH+P138zM9hsb9tkwO79BWLZAmOjteoaQRE5v/GROcmx6
	 PPBkrpx3snlZex2LZrvTFsdqOtYccldLaL2Wb6UEtxIvuUgbMgAF+oaRxZOz23f28C
	 7rsKTkY/Af9hBiHOT5T5imReNKFM2fIYGDue06dfWYqVMWpzh7CHdKhqgE2tVUUYvf
	 BTZWIpCSppBPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ED7EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166556705331.14415.709434525213329549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4936620423932aea1fcc84281b05a2e6ea9d11a12f95fbec6397c15ce85c2c1
Date: Wed, 12 Oct 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665567053

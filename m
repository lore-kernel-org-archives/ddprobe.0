Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5833E6111
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 18:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5407C433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 18:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678906205;
	bh=HH842iGB2eVD10mF4+L1c+xUHnD9YR0gC7PavMtA/D8=;
	h=To:Subject:From:Date:From;
	b=EMxLLvaL94PEPBST7z29m9zBCbJdhKLdC9InTVrskCfJVT7hU1lRcoLKOoGwWFQq9
	 BTpLesCq2dRwZaDA4zGJl/28qbMtOzU0n7yYScKp198PBJPPTkHrXl/wj0DysDOOdH
	 jadjlY8WgLU0d2NA7+j1G16Wexireg+aNDklKzF7alJ91foD1g3r0lkcjVTqGvG/uG
	 qiOLcj/wVcwkg8eYmPov3TFOPtMB7G2mpOhefhmsISu/scFQYHkJ7KWxdKmhCpZnQf
	 xTBq1Zf21mdSvTyqkPgrtJTOjUNoPzz3TQ8pdUsSwVEKBhan6M9yQKuUOXFcY3nAnx
	 8U5XevxrpC/1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8A8C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 18:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167890620576.17418.3160521975093838649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054f4ae4228e14dd49af713eb1fb5c48ef0acb451b9ac2053f6f6913d3a8f89d
Date: Wed, 15 Mar 2023 18:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678906205

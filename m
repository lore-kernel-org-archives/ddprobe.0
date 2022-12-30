Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0905A28F7
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C085C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672419687;
	bh=MZ+zz8Veysx4wfeQO8mRBfgHUuZb7yF/aOKdcIS4xeI=;
	h=To:Subject:From:Date:From;
	b=NacCM8Ugzs+wVykbknoINIXhzXdv0g4Fjmj6J3Uf0rqkCECwi6fuXS9q6nRpixMLl
	 2BHhkK1GeZDDKysN3slIA1Zodl0RcP1AgrXssWHbmw1jIzY9ZD2IgO9SjEl5SAENut
	 VOP5huPI7dBTWt7nNQpeiMOtMZm+m/TxlWiyzaxL7sHJ0G8NEb74fdoqysbQOpQGBh
	 55zCXJSBg3d2qR2pSPAoOBb29P/WQG8xwBbxOsdm1VlVRmOw2nqBGYM7ThiXeAcm50
	 yZLgtXlE/CtBjUs3v+oxCgU7bt0ROoPxoc/3+ukxQa3X6b7nijiyWbxRhQgniEujuf
	 JdGVREglLwacQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 761C5C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167241968746.4252.12188790027549000377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c2fd9109507ecc5e15002deae8a6dcf998dde2a979ee454e379727b8b2efe3
Date: Fri, 30 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672419687

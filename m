Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D33139A
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 04:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C66C433EF
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 04:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685508245;
	bh=xIJAqhvXThM34/qPscA1zF+wc/DvkSv1ZpeLRolR1Fo=;
	h=To:Subject:From:Date:From;
	b=krDo+WJixmIzlEFPvvv90RpDz811K/dR4qgSOE7PlDvk6H2EGl3aviGpMBgJuLNXD
	 d1z/YDEukmBK3w5+jkZCQTb0/kHZnGDBdDZ7Zdn95je+8SJunu6+ByORMaDOWLPsYC
	 i5kOwj4BjFe94aEtR/JQaIA6jJSDpQ6T6cZ8M6/GclFYhjqK5oYhAGcDnZ98GXy+La
	 ilZZFNs7/DMCl/E1u7xMtR0rk8XImPEJdRow5ZFpnCvVi/rM5flsdlIgOQCj7woAc5
	 YEqQCAabBCrSbxQCCqculI2UdBu6W30f5HF1JQn/WSXA81TL5zV1GSN1Eovvu1aYSg
	 ABieXaH/uNccg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB6A9C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 04:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168550824580.5095.6721677988367965089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41f3bf0a02572fe21cd0346f3be854852788eb336eb67f082cb9cd02c6377cb4
Date: Wed, 31 May 2023 04:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685508245

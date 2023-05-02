Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE1C33E9
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 17:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA237C433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 17:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683047166;
	bh=QzCYVjtPAgsS4+mNDDK0X9qmxTl/M+D8ju0xvhpRq/s=;
	h=To:Subject:From:Date:From;
	b=l5Zzfz+H5YvzGrrtxv/cbhVoRAVCdIXTcmFQGdx3KkFeIqd0cdpfred9ByCfx9LjB
	 y0B+HgKvdG6bazVFbdrXmEyUASqWSopDY3LpTbmHjOG1xcqHfMOIBfgeTr35o4oqCk
	 FWUboY/uYy70OFA+bk3lk3uYLY+AF7C5Gx/ulZ07XTHMCJInwMA+iMQcUMfTDvIaxE
	 8NOeMX4cGEsjE0qE2ixHx3CsoFm6xMLWSQk9PZ4QfqhJY7cU9jdlfivTSSkKtgsWqg
	 ZVOkfdIP6E7J7iJczOoJG0Be9SneGNpK7UrrF7iIiqMuTgB5WOcNfp3HVWSwjK5Acm
	 vZsjevhSaUnfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA246C77B7E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 17:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168304716581.4089.5921365381561746027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11567d88da4ec94b8d125d288c061577cbaf7f528ff76987231552cc8ecf66d5
Date: Tue, 02 May 2023 17:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683047165

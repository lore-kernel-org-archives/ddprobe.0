Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AF007F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 02:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED411C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 02:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689907329;
	bh=HCFwz64oXnVoIqYCFdLeXr+x94BwurK3/Iy/RLQ9TGg=;
	h=To:Subject:From:Date:From;
	b=nmRu+OcL3y5FiX8/cK5R1W0+y6Rl6xM2Yq+F8XmH1GX3vzzs7qY33bp6kKOVJ+4Wd
	 +Xf/IfNlPe49t6n57W598dKSVwx28g2TFAcTaMIs7rAoe2OX3VcUheBwe1vdmLVIEv
	 rnnMM1MrDQBM12yDvOOzxyJHEOxBPYLYymTH/lzRlDBweZndeSh52oB0o+8Zk8/mp3
	 7NlyJyQ34ogFp/DQ5lfNKf3rNDnT+tx2vJSH1mtW3/6vgIr0hfdSzVKBfMRQWoifJn
	 y9aEkxicfQoSQHZI+jLyQXtvF6KqzHJ/o4xsN+gYLNb7gN/Ww+3I64fbcwfdJxL03V
	 28C1tTPpbr5Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6148C0015E
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 02:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168990732880.23865.15446427259832177814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8d0a014809019677f66de771ed74b5afb9c55047a75f76e09988bfde29a385
Date: Fri, 21 Jul 2023 02:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689907328

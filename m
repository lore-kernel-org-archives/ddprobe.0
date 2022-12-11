Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CDD10E5
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D71DC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670720487;
	bh=lHMMuGlZ2qgTuMv5SDoCRstSVe0x2BCbdtd4KcwV4Ik=;
	h=To:Subject:From:Date:From;
	b=ocPDce/TnUlraPn+mXlaOQL6hH06bfae/qkqzBYw/Q6VjQo3b3CnzRySWdBDw8Llv
	 W3dlhNAQlYYZAqAJrNsWWcmL8Bjh26i3CEr0kDaP1X8jDkxj8Qn3KPpsPTmFb3narQ
	 bZZCvaG5Ip6drcDRy+F99EUxp/Br8ekVmViwT2Gx+DLNod1IUiAUhqvX82vaXYLiJa
	 jbZiiXwjqnld4kRWF8E4bXePhv498KDXeVJrH4SaqjJL9KZTzgrq9onZ3bDl12ercb
	 JeePyjocLFT8uoV3gF9ai+BWeo/C7fhs0KA3sH+XhSHt8coPX7ff97GZ7NMNltFTWI
	 i0xQL8Pax6hBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BC5C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167072048739.16699.5944327878246754719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659a5ad66d8050f2b4bf90c95bff4b3f96032abee01971cfd7b5033d81e8dfd8
Date: Sun, 11 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670720487

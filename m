Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB764C630
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icuv3KfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FBE8C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703576896;
	bh=oPVL38tvPgR7QjsVga8IjU16/QVuFYBjbazrFgJ22VU=;
	h=To:Subject:From:Date:From;
	b=icuv3KfB0q/L+8YrH8a0+DWWTZKGkcUyL3KrRRCK47g+jJSb1um9P8m3UF6sW2NZH
	 8d+ltXdXoUJuGyYY5ZAx69k2Q/2WXLr+o1AXZbSI4o9h/UrBOlYM2kbp7Ex8KdV5bO
	 lQouSm+fHZoVlt7C/zVJsNFXSCMJ+O6NXl83p6YnKI8jPAy4Kt+rkd++47gChi+MMq
	 v/gfGEJzcSQUxjdQpTeeYaYX9mY90UqIks2pBqeGh3df72CWumNv5vrpyFIpKzD+4S
	 4VCtpX3csL+GO/IBKZipn67Dk8DUJIv76c/+3yLpGN+nQifVaGOYRD3kgvepbO3vtc
	 Yw3vndzBhDPAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64AA3C46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170357689637.970.7087585812811079493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83387e4139908300306b780377aaf65e74e621e9c963ee64da1e62a7345b3b36
Date: Tue, 26 Dec 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703576896

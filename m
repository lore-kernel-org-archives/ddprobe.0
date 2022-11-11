Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49FB2C9D
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DB20C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668168054;
	bh=iwaDTjAon4Fm5+m4l32bqg/5Rqy9ecKQ0HfYsyru3ss=;
	h=To:Subject:From:Date:From;
	b=NkGvVMZShMY9r2yS78uDC9FFLbumll8MJXmTxSBOgG4sZZuB3qmsCM+JhGuTEz3Io
	 RySeQrp/jU3SUWj2Z16XnwxmZV2qlvJxoCLdanEok0jSF2MoPjbtThGwKfpMnuVKKr
	 LIll4yqiPkeBKU735OaX1eHVvcmbIalP5zb5+0/HTXqcaa50tCKMPqvYRiIb8oAOto
	 jjH+9bmKzCXFe1tARROkAodSHU5f9591kSSgYiR7nw1h9vz4xlSpRK4lz21roLHoiS
	 l5gD26gBoTtlg+VQK/SHxEkT3wFC1/XTpIyG8hhmn8Tgx9+csfGET51ECktRz0+Oxe
	 4XvRxVsJPdhBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D61C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166816805440.9338.16596799166701230829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144fce0d0009f67c8bea4f79a19d03acc1b7c4f2b47f4bfcf355661e01201d26
Date: Fri, 11 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668168054

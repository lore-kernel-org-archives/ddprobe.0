Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9995257
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 07:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECBFC433CA
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 07:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689577268;
	bh=erzvrUSCSJadDQGoYB6txRQra8kQx7mb56y3LnN/2NE=;
	h=To:Subject:From:Date:From;
	b=To9tzRSPT7AmwK8vWx+YCeu1OxSb2+dUAzXdB2RxdG9W0d0qB4qXIg5NlKW+vszqF
	 UcOOjQgjaXGJ/DGxdNwZDE9pBguRA2zf2GaDlQm31re9Wdoo6Oq8AMUjGKayWdq3qz
	 20iGjUju+lQ4iZDuy8ODLCR4kz4AJq69DOAYx22d1Cq6wVYGLpsqBG75w/sqT0leMr
	 gn8oNpbQGgAipR1/F0FSNNeYN0PW4ybdbdmPXt4D0Vg0JO98KJi2YBadsT9GZZpF7P
	 gEXBFM0ubxqh9aGvwLxLFlIRKJFCbhbMS+LWjF+YMb49Dg4lkhbxoz1VjKHuIGoS8e
	 m82h09hSkc1yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E67EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 07:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168957726872.10186.9241714293830111244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4180ca71085d3e215eb5e2752e8d17915251368d48c91a91283cdd678b60e27
Date: Mon, 17 Jul 2023 07:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689577268

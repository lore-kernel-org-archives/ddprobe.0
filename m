Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E86B13FF3
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 17:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEA6C433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 17:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693157648;
	bh=9fmAmQZwn/XyCqzFlVbp2F8UBNP7yNNIWMR8M9HHY6A=;
	h=To:Subject:From:Date:From;
	b=emtMkv1EiKcewFiTg5NgK7/x6BPfpCOyGv9IHf+g5EfbdJ/7OmwZF9yyKLeM/Kt75
	 h1uj8P/KTyoFUc3DDCWJ65IkHFoQRdB5BhLSsOtfcWYoCncpkLSzk4WOZ9eQcn71LU
	 SkOLlsV1phXitRlFHNRQCmQ9luLpVNt3gqk0h2joBZN3oNUKlre8nMdZxBFQ5kf3v7
	 vwwP19WkJV5Lo4FcdlcZaF1/Dv21tgzrLZPCvVKI3333Hg3H8IOq4oTOFenykQXKY8
	 l1jiaUv4FI11adM6cE17Pt+Sj5LDJZ0LRscD5gA0A+1FVOSik280JO8DflDe4HkQ3R
	 W3v1gGLjstQ+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B448BC83F01
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 17:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169315764873.1496.10925767901631998696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae154cdf797010edb92dae76b0d48a4268fdd9cd5cf00fb02d09327c0974e25
Date: Sun, 27 Aug 2023 17:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693157648

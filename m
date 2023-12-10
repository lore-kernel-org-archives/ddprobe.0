Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262867EC
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIdZk+aF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86BC2C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702173496;
	bh=5ZHt0rdVE62sN76olDbw17YS+iq9gSxWfsFvqTQzq1M=;
	h=To:Subject:From:Date:From;
	b=EIdZk+aFa1pjP6yaVl2DbbwF1iXhn8BkBfM0wDBXRVVDN4aIL10iN32LMlPlMSXnZ
	 Tedi8fp+qvjk7fgp2d4ti8FqQfX8f3QfE9U/wLAGi8HpNc91wda3W9ZJGzTJFrXGpN
	 RWW8cTZuPrK7s6fwgOUkFj/tqUsRwY/1C9A+wt7qfEU9Nfe0a4jGZ5ShygHtHFVqRN
	 LRJD2RN6phCpiOpvrnTZ/D3QbnLopC+5XSt6f4B4wSnN/CxTFiosP1pNxUvS5fUg+G
	 m3mvaw+QULH/OC7WIURqLuobvct+0TDWadr2tRMS1Z4geHvGWd2lSAwyouaqDNfMO1
	 21MnU84UBVGFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648FDC4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170217349638.31589.11833070295237978417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a3afcb06f08420d7595347333c22fc54b08cdafff9204039232789bb78b8e0
Date: Sun, 10 Dec 2023 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702173496

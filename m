Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AE95685
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 07:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E448DC433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 07:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686036125;
	bh=VzgPdXIDlVADzNs5mByRWGaNEE3D9j76QRJSbaoHbvY=;
	h=To:Subject:From:Date:From;
	b=YSiWMXou2mJqxK/saftUGB3NQLqDgL9vYZX3+9WnTwcz+QTKPCfyXxKu6QivSdse8
	 hrcd9nc5jNHPpGU3GVrDrZLnILMeaxJFt29ZyqTRahl1yp1FTGPoU7ggEO4GHYS0wL
	 G+Iv/O8YHk8dcyZ6y1oyJ0F9QcGbrv5thdH4zncl6pRH0F8uUpcnixqFM5JjED6TpU
	 yYonvToEFStKyjcp4z5ZUQQuxx5c0JsiKa9Hojx5pZh0yLTPRl9kDviqSJpITxT1jX
	 fCT2oU9JP6Y5Yc6T9K5CZbGkdIr9Tm7MkJjceTKyj2OLlOcRcEp/DoDZSeqnqO5ks6
	 2awuUX/uqzc9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C294FC77B73
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 07:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168603612578.23280.18373379940231494496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48fc760f948f484151c0629fb931a3d2f374e24421fcf22331bb35401df25a70
Date: Tue, 06 Jun 2023 07:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686036125

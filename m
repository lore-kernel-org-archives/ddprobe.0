Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677CD28917
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 17:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A54C433C8
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 17:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692896648;
	bh=IMpnusqh9h782DjTXeFF1ZcU0LBl6HEvmrGwyEk1t4M=;
	h=To:Subject:From:Date:From;
	b=BqMorfuh8pYwE9cRi6s6lQgN32C1KsrKk3PFlgrU+EkEkUNsSyoM9bQEAs599Ti7y
	 JJNEljPy0XpbVxBRZPSar/tbZMpzVdpd6cCpzTkUDWYX1E0UNfrgxKkRKVRsowWWOa
	 o3P9UmNmmNFp+YHKiD9mdO7KkKlHKPO6RondIaGD33ehASkakh63xhGuK8v7+33/gv
	 pNXtTFvqt347VbDSQWpcib87GI8DKRT6qdXzuD55PDLQUWR9bsWWNkIDp2c6ltZMBd
	 hyJmSeKqgJu6GkpxO4Yg939UwYsedCDB/j4CXgXCQwJkDWfyYPDYHycfb6JzgIaG2y
	 xtgLUQ0+Q8s+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1838C27C40
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 17:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169289664870.20458.11230971554326347487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad1e9204350a104281dde537ca9bba16e54ba31710acf46d70b0cec471affa1
Date: Thu, 24 Aug 2023 17:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692896648

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C6D3217
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39DFC433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670522487;
	bh=KF1qrQhMksFqz3aW7ROak4phJjhaEmC56rIXFtKcotM=;
	h=To:Subject:From:Date:From;
	b=szUb8xYxXTC9h+cihc5b2XIAJ60tGx9/4Yvlg/DZh1ZX1LWkBqsZIgGqogRkwpK/c
	 e5bfsb7IqKKWVUWsIYm2GumogbP9LvZwQhz4QKKJgT1+gR/PrPaYzbvhV5nN2AF0Nu
	 u/EFGZrSPElSWBXACmJCawCRwUxWbNBFR3mTlVaKq6zmRQdpdNhZlgB2Ikc5dFQRcP
	 7fUApzPikdDcbTXCP5DvtUNe7DejUK8iXhWk5YF5XdePtUrg34y58dpv8fpsdGfxMm
	 HTJbffFxJ02SNGTbD6B0VFHKbCnY7ORI0FjtnOEhL4pzkgGfr3KU68F1khZwhV58+U
	 nELQpdPGAsRxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85A47C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167052248751.9620.17337625626247650047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c76c0cc6e8171bf99ed2522d7586a0c82a4ffeec4c0a6c08c8526b2149ddb958
Date: Thu, 08 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670522487

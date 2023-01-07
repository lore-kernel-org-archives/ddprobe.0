Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24731C32
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88CD7C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673102487;
	bh=M91pO0QeIEJ8Zn8H8mlDDXdfHvCKiq1aEjpc0K+pP90=;
	h=To:Subject:From:Date:From;
	b=Pfxl1WS7F3H6Y3ZGw4ATFqc4kv3FnX5x2pAxJ2PusIjjYYoUo/s+XgDOayTx9U+5z
	 2PrrlWd0f2V1ZqM5Cpt8WA3IF0Ry/uV3RmBR3Z1ya+SC7hcBFk2dZRcL9wuOXsWzTy
	 KJIyzDYGf++yebRvNgjD2U+6qc3ji/fSkG9tt5cQjNEWaMa/PfvweaWqxXLGvh4sus
	 XsVLDZlFSO6wwvuonaNPoY/mp99IwZYBEegh9OLkvcLdtvp+2rURVinkPjXSz54ZlJ
	 PBa4gkumumaagbnUWaWUqivZKJWrzFyAQFG0A1BwWk493hKtdC3ZAnKWq07Doa0O4h
	 ssRrKQiRA1mWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68422C54EBD
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167310248741.19057.1878293789320866761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29c9f665ff106e1d181d005622c6d82929fef1d7131852c9a98932ea12af71b
Date: Sat, 07 Jan 2023 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673102487

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B992F9C4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BweLoJwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B6ABC433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704197296;
	bh=Jhq1pL61Fyj6z/PxGvBT6TEobdE1A2h07EvMA5la5W4=;
	h=To:Subject:From:Date:From;
	b=BweLoJwRtuVOa2Q8LfDDkJGvb9sRYp/PRb8NLlsNdYbLhiCdwg2j/JfAciZ2bRRP2
	 uvoFhILRiFC/KbnNsoBbJzj9LmarJt9N1Qjx9TS1n04v/WBp3P0ATD/Ey8rOeTzLu0
	 3gYxqXk+4lqknY03xcNDyfGO4puQi+nNgKQBszpKalASAw9rqTSt+mf3rRpDWNqWrc
	 X7EhBN25V3JFA87FmCQ2ZA0rFLcLmfpZ3j12Z1hgioT00nHx1GLz/JYIfSENNe/UJZ
	 FErXXmX1Mm0rnVy6PTkQoOL0dOoSSCJmVtmKFgeLk+0EEU+FNblQEjMdqKbdj8U72+
	 yIpBgxHKrxrqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6668BC46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170419729639.1488.17352746334651437996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a1668be6ce2f27412b76dfbd69382542b0177457bffa46ccc7d925ab827c89a
Date: Tue, 02 Jan 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704197296

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE67B3D61
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93E33C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671910287;
	bh=W5pVN8oTUVfOWG/1hzFNeDM0dDnNHMztQy6pRi8WWFQ=;
	h=To:Subject:From:Date:From;
	b=NxA2VV1Rvjhu6l8Myz0kqYqnOzKmz4dJ4oGFqRU/TK9P9HF7hyogVoL87nQBHlN80
	 q1GFUl6uQuAnX/JzjBd32YFr8anj0KAqZuw0FlITxmjyl2Zqu84N5uHj4WIXTa6BK1
	 TL+osf4xPCTZGhIgrS/mfdN16nPqurIwW9VlJq4vyaHj8yRQ61rUyN1p6ptXTIRv5d
	 aW3oinbp3UDS7wAy4hIm3lCt6gD3/k5xkpPTrXZm6ZW2RsWiVUEubINX2tR4tRSegh
	 rOEd6bR2YbIkeiBB63eX9a+5Wjsl22aXa1Ami4RfUkEIaOXY0Cn7ofhefuk4kCzpq1
	 JKlhvQ9lhu85A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 738C8C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167191028746.24970.4655367360634391103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52de80b85c16aa05650b9264a4fceb07ff9270a5b19aaa92750720b38ef3bab0
Date: Sat, 24 Dec 2022 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671910287

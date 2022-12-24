Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D5017E8
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 824DDC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671855687;
	bh=/GuEPYjDvcPjMObh5SzWUKXqG5fPYt3Dz6NrkulCq5c=;
	h=To:Subject:From:Date:From;
	b=dMhrIzoTeGmfq0VHqD7kUIMojpfrrzNofSjn2iXmHmbbUeTd7VulkTxXxfTRMUD3k
	 1wEKApL2qc34cCmNfJOGwc1VlCUj8GJgH78dO8r4dmM9+ooqWnPOc01DTUvNstN18U
	 Zb+CtdqhO/kQsT1EdW1cG1aLq0VEg6bWz5hLQtrceY9DKB69l2TZCL+VDwKcO7QTXs
	 JjDXVdZHr6ptmLUxtv7i2uAYA2XGtKV4Xj9ypoRz0f5MVon1twBheIEUNCAC82Tpd+
	 WvhtidOhk8otfNUT5vOs+40nq4Tn7kQnms4VF5JpK/3TsYc+RxWsV8uoOiI7D28VH6
	 /gnqLOETJ3/Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DA2C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167185568739.4150.16344366411586482869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25b65736a9d2609ed12e7716f4727ed45b2f8420a0770b60b77cd2938f5635e
Date: Sat, 24 Dec 2022 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671855687

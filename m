Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CE01BB2F
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 21:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12F2C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692394448;
	bh=io+tVAcM+G0DbkLTzMS484oDqAqwzMVlhjlQP663dPg=;
	h=To:Subject:From:Date:From;
	b=UvN7KKbfx5VRLI864D9QhmdHY0MzLX8MaUVL7p8Tpx48I8cBMUFiAumlb0ZPAnn7X
	 8Wo1zleY/ex/Gpexmhad0YI5wMpjc1fFRAysCJ1fSwOKF73JnVzVwXI7p/hFsil/xV
	 BFGqNAy/aL63LGT24Oz16H1HYjgK4/F9XcTVnZ1etQd0ZvMxNtp9P4Ou4L+CEKRNNe
	 3ir7juAHs/LbFsNU4eUHMWQcRxajylam6CCoOu38nx578cC7am7Dh0b1kQVlCFMz/x
	 9hTqyK0oz+YqZs3fq3kUIbcYygjqXKVKygsZBvrO3Um88/fFJOKkRNom1de19Umo1k
	 PjjBUe38Dpw3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF51EEE499B
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 21:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169239444871.21179.12248996027574972266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a61514fc3e8663a562903160106b0583d5a370510c8f33f190222573709711
Date: Fri, 18 Aug 2023 21:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692394448

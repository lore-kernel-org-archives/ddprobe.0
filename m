Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C679B46BD
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 08:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 108D8C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 08:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687769589;
	bh=J6m9pz3R7bfAO7TV1i+TMz/TvViFeXFxsPSrbtZvTdM=;
	h=To:Subject:From:Date:From;
	b=XL/2z4ZsOL4TrJH43GHUFbT3Y2+hrG2zCbwzv0uxIpyjoQe+PST+pplbW/0z0uuMV
	 66EQZ9AC3IyMcByv7Vm9BueaUqmENqrI+eYqGNxQrahMFs0SmHUnd6TuwvbGrjmnvr
	 DOCOudH87e2MfZMncLIp1pB5Re1I9vAPkEqR9XqjFwjakiAZY75m3Ot9SDf2LBp/FF
	 zni7Iecx2RtL0yTvRlLzA8soAd4Jerw+WR6NwfdDebEGErVPOHmiJwXlUr88DQV4VF
	 dtHtbGyY6qZdNE6ro9v3E955/LDnbQj42Ve4Tl8iTuLxnvdvuNOqfb8HxSdWzaQDJY
	 QJxIPDOUkICmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E28C4EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 08:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168776958890.17099.1282455236106186947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a4d93874610cd86bf75ca4f785417893f4d7d9a70f5f2a296c7e330065a44a0
Date: Mon, 26 Jun 2023 08:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687769588

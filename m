Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDDD05C81
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF28C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663344653;
	bh=FpdrLHdR9HY42/3U52UCLzY8vE1vQ01gBnOaWqAOXTQ=;
	h=To:Subject:From:Date:From;
	b=P2kNrDoYzWo/o01LTa8F4uGJJDhfcqjRDRIsa2OYh+ovZZY4S/3wIBqoXvVreuhq6
	 De40ZcX4+T3VhtSA8CfoeFOT/p/+uInrafAjw0+BW3ZglP2ureGx7mpl6pfhNVH/Kv
	 1GC2VygoMl+NgfTPbIERgqxQr9A7FhLtEPXpNZ4P9hIkzwlmcJ9WAnGc4RxbyLIIrf
	 MwPC+ajTqw5EWyh9Jf0c2rhjMAkePUIGA1aXNd2uenOo63zSYY+RWL2N83EMqzBmcr
	 vg+9KcSuUor6FAhO5L4eld1ST1EQBfo0Vfztdt83JsUEqZXv/2V5zY+7g5d0EHtlsc
	 WgwCISkdapNcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5856AECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166334465335.28267.1066523585434596642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a194ac3734d6fa6f6dabce59daa6fc4cb64ef8714267db2c02d734f68f7f76f9
Date: Fri, 16 Sep 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663344653

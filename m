Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF907C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 10:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB40C433EF
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 10:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682332325;
	bh=wJOQ3ERsroCw9cmabyjoxMro6t6+zG24EInFfiH5tdg=;
	h=To:Subject:From:Date:From;
	b=lz85WlpvWi9jmoMuIjByu5O7HR7gKgJnCCj7bJKFcIYFIt4vLHUc8B92hD3pz6JIJ
	 hXJr12UygSQ88butraGhpmHRnacDUVwcTjpnGS5KKFhYploYLO8/qy43EQQzpdr8hV
	 JSiVNCRXKI/HjK93Ib94f88RS80lSRCZVMBLVsNuVaWHOz7Kifs/LWrfbrpAw/a+4+
	 sCR91ImLT6K+/7qVtzLM1G3JjoopweT9IrY2lhQZKRk4eK3GBqO7018kuu9N/lg1j0
	 oZTYSvU15OqRIR6j6Ks/ZhJXeIH/kgkxP4V8gond+WroTg7jptN+eBPeQ5kMLmw6yy
	 T7OHTqFHtw33g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C206AC77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 10:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168233232578.11014.3583821050313856252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a39e10f97ab3685d93ea7fbef27db80c9f5792cb5c1eda9fa4927cc3fb9803
Date: Mon, 24 Apr 2023 10:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682332325

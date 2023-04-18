Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4782BAFED
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 20:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7285C4339B
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 20:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681849265;
	bh=wfTJzl1rnaJtJI17bhPXnl+uIAteOJjb52zfeo5eVfo=;
	h=To:Subject:From:Date:From;
	b=BTcT/GYOTOGPQ3k4caE4YNWT57A4Tnxg+Be8wUJ7+mH70zxfqMRAZoZCgxyxNB/Qz
	 2XT+5i/bDzC9D+dXkWUUteh5tlQu5pIcwyF0esjbAhUqaeN3WVw6oqS7RC+rTE0Atk
	 oY+VZaXxNkm5+Pd6ZCxOQqwhrPpRDXfB22xSKA7qIGQwSuwNw+l9VFJ/viSH5rizdP
	 BOizs/jNcEe+3gw5nSmHdiS6+BDX699qF6I0ZbftEOS0/8KImhV1lTU0DIFp1amLMr
	 bynjwZJDFDYLJN39fZwBj/NYgLbFOZBQJNqV1qoMcF9RP+h1bTX3AOQ0ZscdchKVIu
	 irxUzz3MWB1mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54A4C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 20:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168184926578.26814.3561855523860914401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53bb311d47da5359d018ec451b24dc60ea88516e39bc369c3782da3c704fd55e
Date: Tue, 18 Apr 2023 20:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681849265

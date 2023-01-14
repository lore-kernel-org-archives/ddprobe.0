Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DCB2F3D
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A500C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673739687;
	bh=SyYKqC8vFo5NwDnNd7wmfGTZT+5gTmWTQcWI7g5KY0w=;
	h=To:Subject:From:Date:From;
	b=S6VjElKau3rYZlxhNHOaADDqH1zYcyI5U+oSRB9uDEnj6El57aBdyWiSSO/f7T2AY
	 mn8dcA5b0BZFq+sKxZzpneiV2c9tZLJGnt7jjpf+74AAyQ14SssmT8tP71iJ+sOH8N
	 8sWWb8DdzRJBO9DX1AU3ruaAbi7wnpsi7qrXQB8Kf5pekICxHldBBQoHckAvVSFld5
	 Smi+zb0E0pkxo24AtOnaHI2zI6HEKEh4PFgJvRIBfR01KcusBPAeiYY4ErnfO5yBXj
	 gXWjAvVzWwGz2w0ZM2Efd8l9zAx9UecCemv02V4f7d8HgM21/XSlHPPSDhvZsiAOMu
	 mlAWC9wEkLxkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75FE9C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167373968743.32137.7850296339040272760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa06a0f8c41e232c4e91e2bd36bae14478553d8961cf984cc85d1deaec245ee
Date: Sat, 14 Jan 2023 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673739687

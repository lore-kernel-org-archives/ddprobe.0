Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A20B2E0F7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 23:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D89C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 23:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686958748;
	bh=tXObrLh9LLT1wNQE06BsYYAk0bts9Oe7CqCIY1+DnEg=;
	h=To:Subject:From:Date:From;
	b=GLB+IXfYT833ZX46aBL94NvbYHoXAqc6PqroOxOa5re6SR5f63sMZTKlwtl8yh95P
	 8E0zcv21JLh5UeP7vpH2Uj8C0Lj97kAvlBIlxnYs67P4LhCo+6DdfnNV8s2jbXwlmT
	 ZP6lNsM8hQq4N0sNypdoCRaoi7Z5M1N7YhApc9R3bmiKWqAq/NsKvGNyGGfisg/WPF
	 lbk0hi4k3dNU00xSnBIVoz7y2KMLx/tZbQyo6rfQFX2hg4mSZEAhq2rPojfuqHyCfF
	 85E6k/y3mHziB3gIYLrV9aE0LjoZwP+Scpqfkv82OzNUYirTcH5ONKbyliY4mRGxkG
	 cmHwg8Vvgs+UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8046EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 23:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168695874871.31329.16518442615643498009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb99b335e7cd12dba1ce7c3d8c4d8fffe2430eedb9b2fbe2245a6718ec4f5a80
Date: Fri, 16 Jun 2023 23:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686958748

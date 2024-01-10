Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B1B47F4A
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPUOo8Yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA42C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704885496;
	bh=+XEH5OTY0b0kB1vt0sJN26ZbtL6XKrWI3TC+0C9N34k=;
	h=To:Subject:From:Date:From;
	b=BPUOo8YoyI4pthNK19XEuu/CshXidx+7kBFgzuo/N/voYots3xj7xAwTvTKPE+3DH
	 R2LNCkU0cyjQkW8KHvehOxexf2aqMQ6AkC41oDvaOsXXEifAgDndJ3RT9jRoXrk6HU
	 DwDp9x/Tu1Z0GCt7a5MlO4yzRGl/pFmgS2sP/86Ohg+mspqdarVPpzIa79/VIxETyu
	 e0Hj5Y19I3ROf+lQ4XYalfrBNjXQHSatJSgJi01cK3fVpvgRPe5FcSUyqCNJRlKeE2
	 ZXOlfWon+sglDqoXn2p2Gw78bBRqXQW82bioFWlYZH9whxYDAPM0cCjdUdxs6xPdH7
	 GrdsIXQCibnQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63333C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170488549639.25458.7019823766697485773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27698bf4f57191090c3bdd8358100741655aa2faad9de9586c4ecefcbbb0003
Date: Wed, 10 Jan 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704885496

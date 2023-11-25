Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C60C1870
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B48GhvOU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 882BCC433C7
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700878096;
	bh=ytzuzjFzR+19gLKzW8SIYmFsfDnzZOHpoJ4/uKy9Nrg=;
	h=To:Subject:From:Date:From;
	b=B48GhvOUn4vsG/UGmGNBTgFrluIAc8Z+b2LkUVlZlmTTA1lQ9EPMuO7/9pl4lXX6w
	 Zt1zpE1eukdvolAGQ5CI2lI/X6uwcS64X+rN6RNyXA+62ygcTPNjEYh2bVtWw56b4q
	 q6TJhwYNoWvPp6CxOw383J/EeWXCtpjfrS4psqoDhuetEALSAvs9Bb0pYlegIXgSBi
	 xdfhD+K2MIlgueWiC7sdsrVWMRKvdCMJu/Ax9Mjdhia3ZjBQ/etlIv7rFtY+9kntME
	 uH1KSEddAhqfonHCgopwCQmCJi2ZkTRc4ZScfyg3vHouFoOCRNrznFZKt3bRa2DzCm
	 nOP7nwBJD1EpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C122C61D97
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170087809640.19753.56185296131081157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968861059336df764abba4248c49d9f506c9f1e62e6403c93f99999c9d65ca1d
Date: Sat, 25 Nov 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700878096

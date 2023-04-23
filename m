Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D321FBB
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 13:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7FBC433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 13:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682256065;
	bh=pv0EzB2Ho8yMFtjAoXnefmY8bfHaE7eNpblVHCUkv58=;
	h=To:Subject:From:Date:From;
	b=mJHG7qJcsV7M3SENWfTzxgkfJZOCnMlxt7SRceHZCrMBX8lexoaNaznI9ZPg7Dn6Y
	 G9WYJ0h4ROI16M8j5KZXqclbC2Q56M7cRRBbkjQx2nyuPxxD8GqP6YqUjy5vGTtEtj
	 G6G/1gIkNx9yV0c0kIkCbAypGjA3j1UDozsro7VQvcsAk7OMfAnBzjKxlnP4OWS2i9
	 4UXTYHgM2RLfAEkIQKcU5lbiZrybHlxD3uzweBGOkiTLf+1jbc07bEu8U42Vdz9Hi4
	 gGpg+3+cYid2CfkztJk1xGuxPVRE9BrX3Xj6eIZdnrMTxLuMd0JX7PPFi6tAbUrXs9
	 NTcTOmgCVTRZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F6CC77B60
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 13:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168225606573.6252.11214889358355188999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6e9cf6897be9c2e8951f26ff0722a9af8304aa4a128b9dcd04332315e5dc9d
Date: Sun, 23 Apr 2023 13:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682256065

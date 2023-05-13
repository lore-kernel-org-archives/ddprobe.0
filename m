Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FD72262F
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 23:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E465BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 23:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684021685;
	bh=+L/D9F7IeHH45G+kKX5NXKsI2/3mVKI1nRxmrHCJD5E=;
	h=To:Subject:From:Date:From;
	b=C61+Fm++U+I0pZ67ptA0UrLGROZ2be2H3rZmNrV2KIbBYq0Rj9qB3755uy72fTnof
	 hq8x097nqrpGcwJx+NZ6AgPKKCZgEBZckmvd3bsekRFuwOXjzigNphoez3keEvmEPd
	 c0vA71kKea3rZXqP733od1RR+2SriuH9Ga/gn800f0bXnpo3GgT2l4c1mJ5QBTiOXA
	 EnAYMAjKa1CMjnXPNlOS980y5u7oQ1dAsVj4TzZgRHaRJHITgPoPOakSmmqHqxUVry
	 Mxnj+7uAYPnAv0p9jCFad0DQueIrcBO1GumACfNbN7FnFwMoTTIu7EygThkhhhnRSG
	 N+qNcZcm+iRkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E5FC77B7D
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 23:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168402168579.12510.13934352193063022516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9649f87ae709723abb9fe4f60d7cb4da630e8824ae3dca49b8a9835184148ebf
Date: Sat, 13 May 2023 23:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684021685

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4064D5689
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 17:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB6DC433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 17:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682097545;
	bh=hxJGnCpHWICjy+ocp17XDF7b5z2NlyUO3KTqjChJY3A=;
	h=To:Subject:From:Date:From;
	b=CrxA7keN4GL0qaBf/sJV0vMdkPJ8Kfvb6ltCCf7ASyUZg7wuj68vUPocVw9/5BTUM
	 89/iO7ZStOWUVPhELQBitCFJ5Btsw/wOBiXV3ASErRPx3hOo7xOhYnTUSbRZkZ/B4F
	 f8fXSReyr7m+xeiILuAxWLergPuggn7teVxauKicgopvs/Lc4KNCSWZbAEs58qtNoS
	 6WBaLvWT5fvtrDIOdh+OCCgkG6RwF2t0AVeAm/t40ZyzMxS8QkSZ3C1KObJsTB65VW
	 BaZGu1F/F7Y1ZKw6M/QkQmHUvz8GNJBXM76PMw+afisbcJ4tcGbsDPndVd6HKHqvuo
	 LX+ZuzzhEjZwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5E0C7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 17:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168209754576.4177.9242232540691833515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602c146ce152a392863c8dd449f0094048cf8f896782190d745912a7974395d3
Date: Fri, 21 Apr 2023 17:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682097545

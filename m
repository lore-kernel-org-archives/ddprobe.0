Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80AA54666B
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 05:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGcLzFUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0AD5C433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 05:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697692093;
	bh=Uqd47GgwOexzYKbL4Uh30ya/+hX8Oj9siwmSisLRJ2s=;
	h=To:Subject:From:Date:From;
	b=DGcLzFUlsrqC7G8Wq7cLuEMZ+PxmLzNH96cNq9eHnV0UilrpoLHOoiZaU87FZd4TK
	 R+zQKU/Q0mROtdc3xxyCP6cL867ivdGfoaBKGzJDkp4LnWGL4tnFZbUa0OTQh326s2
	 EN804ZV93KxEyCd8IPJXnKs8diVM+hl+USExzr7MT704qUme59WJunEhhYbU6sf1BH
	 K+sEUgvXknCv5JNp7RPn9mn4ElwEv0uukwKS/sLSk2+kz2p+HatecSWXycuJD+9uam
	 4d/3wHFt+9bMCBkwVR1mwnhVkm69PYpaQnw6gk+pVDGf9stqh5kTyPjzlQCzVtluK1
	 Hq8WMRz8ctfcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0322CDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 05:08:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169769209282.30188.7948621567680049871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f869ce3114d0364d9c6b6eb1ab7e0a8607fbfe52cdcf03754256af37a711947d
Date: Thu, 19 Oct 2023 05:08:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697692092

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A1463A
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F3FC433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665739853;
	bh=Q64bGNV/fbmtR5atqrAwXj0qbX4tPqZYg5nO/jE9hjU=;
	h=To:Subject:From:Date:From;
	b=epTAaDk644AWjOuhf+ofWLm1b4Gnu8HD8U2uV0bLoGtFUy8mCa1FDOxP+IKw7yNC4
	 Eyu32H7iO/r4R86xqQjjlPCInnNJmcZfUzRPiwr4ZEr8gjG4FfZlsZ+5KtdbAS7s73
	 hbpfTeJSTstsG5MMwPDa7w8hTknq4lyxYkNs4gcpcJy6MfzWEvotJokrDAoSfFFHfs
	 a0dCbHeMOYh/zVs2LqN+ITM1xW8p8f4BQAX0EE5W9lyvEVW8N+VHdHC3H26lAqoFpr
	 4gPKjt2aHJABtznfMof55wZoIJ+fvFmjUpXvfVLO9bhMyOjZNevrFKcBG6BiTWJKgY
	 IcyT4vZdH3XFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F18C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166573985335.13800.6420915316074812355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c615a2ed3c82a7e611900b2cb6ee573bd4915f28985f488cbbef6f6e4cf3ea
Date: Fri, 14 Oct 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665739853

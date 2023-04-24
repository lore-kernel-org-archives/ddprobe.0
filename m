Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC4A63B3
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 20:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14E7C433EF
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 20:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682367785;
	bh=hFlPjuBSVJ16xal3R0OxJMjnBxqUIEoDQnud/PVjNxc=;
	h=To:Subject:From:Date:From;
	b=eyCi/CdkxNbw+ESsJ0Y8JaXZBS0eCIPv4qYm2A0qX1Xs+QgCqNCC7cfEg3oe8KC7i
	 S32h0zS2MyKjBoqsOSvZ9u4R40FA2D43wUZdvAJa4rYQ+D4ab0HyYYX6QlyjFonq6w
	 oMBv8yFo3LzlOFFEonOr8Z8pMmaZRehyrh91OM/m2JQChvTVsH7rOubvabdgHlCh5h
	 0+6sh//ul30NMNrAePzqbpdeUmUjOHGgFYoa58fyegnGuIUxnFw4dUkx/rqSd+2pi+
	 RfpVk7s84FZpEkMUungAwMCBjYDdhcnHNujiQvyxakXjp0/FRzLMlsaDVODpfOHhYo
	 AcNyKT3KFeRMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3086C77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 20:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168236778578.17595.11020152149561262467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34be35ec2e974d76c5d1cd18b4c43c926a5400ae0f91e90ec42e493404cc23d
Date: Mon, 24 Apr 2023 20:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682367785

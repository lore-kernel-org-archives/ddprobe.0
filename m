Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C4833C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsr9ZOdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96655C433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704009496;
	bh=31s96nS6pZJmAUB5rkUPezBT8NSa1k/cSN+OJCr0s+0=;
	h=To:Subject:From:Date:From;
	b=dsr9ZOdjh5yXlP1FKyV97V3XmhEP6ksklPC4fmv03uoO7WpaW3bBbEk2uUD5WNyXN
	 2YW0OHuyHCOILtfbvEFc2K4WNEUZlQ8XsXeHaanNMztQfbRMX70VSFAJNX5Qq8Z/dj
	 5rqbt2BrcXBAE5lFbe9sX62joTXCHKQftCm7+rSV53YeRGFTWLglmZwcGGde+mmlAo
	 AbxHhP3l3N9EAna6aF/kaMPPtUAEFf3QB8oRcYathXSdFr9OzOZLw4jU+5Nh1yNs+G
	 eozAfDZjozHqgDVyotuI1IffPrVTEuzvex9mTWuqxywmgFPRuDlDZXuGJtyUqcJk28
	 cmQxYfr6mMqZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C33EC3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170400949639.27335.9424878954145751234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa48a60994dd1b153bf313b9ea1947bcfe0e950b0f504b9b8e97f4d18cad1183
Date: Sun, 31 Dec 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704009496

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43695A21
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 03:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E303CC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 03:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679975585;
	bh=ujd/j4tcP4UQWJHrAu9/YiqjuZXr6RSIKH4fYjPVA84=;
	h=To:Subject:From:Date:From;
	b=mwYaubZ2Ry+M1voR0WobFh2uI7dbBv5dBAiFKUWDIdd156Z+4TWjG5umTWNCtLXbN
	 GKL4y7Eb4YMKaNVy+zapr1EmWMBfO4LOFMer4e4YvP2KqBlY6NwDLfjlzYfkGLfWlE
	 DM/1u67QidtfJKnQ8+xGJd4VYounvAe6G3ZzaWiz2gmXXGObHXIK1TlVShwJkk1uk4
	 t5aygkE6jweFTmKL2DJ3NmYH7YR5LkBPjAU1QQnjOYnMRPV4Ucolo8YVYY4y+7klpS
	 FWkt/ptlF9WhusFMhBh7J+8ZfYSpXpKHNbS14NfcLeBxdWOubCTgOXtSwOpljaoI8x
	 aOp5ONbJhHd/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E0FC76195
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 03:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167997558574.28443.8146348454848078370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29cabc3fe2d19bdcb21aa711931cbb0e6f429eb7d9ac4ebeee8af79d06d5b89c
Date: Tue, 28 Mar 2023 03:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679975585

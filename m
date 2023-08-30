Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A42C3FFB
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 12:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4E3C433C8
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 12:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693400048;
	bh=OPUYGjPmPL64VMSYughl/x6lKtQpSNUUEF3GDrP2Ri8=;
	h=To:Subject:From:Date:From;
	b=OLlsCkEyADwDLrL9T80g38T09lJ4nmU5GguaSILU0KiebkIZgDKjcOAwlxNGHRWfZ
	 03DuzV9qBX4/B+0ZfhAaaQy7aqUXkddh6YNlBnRoufXKKtiZ/Am9g3sw0T42vCUNSd
	 5GMEHS7bHmvSYpXjn36lSYY3fo6R89Pnq5cb+5m+XfcqH5SQNByyFp71umjnh6702j
	 qffZGB9pJtlPfM22tr8Du4yJ93U8NSZoZMP715IeWeC8ZM6qF82qvzFL3pba42oD63
	 RvPKwMt7mBWk+SgK84QCIUc8fMZ5ZQQ0eLUxR6eTDN220tCivpUYm+Pkw2IZznegAI
	 ZNpfFKoTo3hIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAAFC83F01
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 12:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169340004870.10058.18227593546521402702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba426b8a5a5cfeab299f23d7fa02f8b8781f63c81c9325295bb95392b72a334
Date: Wed, 30 Aug 2023 12:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693400048

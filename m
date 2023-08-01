Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2621ADCC
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 16:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C633FC433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 16:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690906328;
	bh=O3omtPMAxp/hFZ2RCdc6vzxyofxGZKg97cnBhmNjZIc=;
	h=To:Subject:From:Date:From;
	b=suxxamfuDdfF8T/bA6E4VtjuKA6WRcbUWhYpzbnxlDdI+kWyuZlOoduwZOtsQMT2D
	 COO7yX6aApHHrgCIt7eibeBx5wkvAYMgPJ58qJfefHRIImndQFd0rzzyyWD41sCR72
	 l33USVoA+GHvXZNayGvWyFBdi9hPOFfHdab4jCp9RcW+GZBqT1iCZr2q+rVyMUgOLw
	 mBBY40Tz1aOefznktD3ZvOCF5cPPgSAaPy2u2WmTFQis0BPY9ewpV9cdI1RKkwhRGg
	 v7bwkb3NoxOkzgtbRHdnw/X5rdf434PvtvK5ab7+FwmtCLkb4q3ixBg5PXQSYonXWy
	 IveYEa1rMpT7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED88C0015E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 16:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169090632870.17899.464301404814008224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f81dea7b345867b10d55201ea03b591aa73d31b7e0677d728b83bf8c5066bc4
Date: Tue, 01 Aug 2023 16:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690906328

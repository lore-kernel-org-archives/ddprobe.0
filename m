Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C27F4FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 11:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C170EC433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 11:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691493788;
	bh=39my1V/TyOOyFlPlrKH748aKHLViBG942b5X2aPKbCM=;
	h=To:Subject:From:Date:From;
	b=WNYDi7TmdLDwmH0POhBqHWA+oUfZ1JMrFojjpn6F+11/jV0sR2kFU66ubEqjHqAdd
	 6ksV8OqDRRRmJlzPtx0n4MlI6ydfxjRfR41aCwOVzv/aa7k+VoSWWr2FO+DaoQPuIZ
	 eu5ddSNxSHzkkd7qK/OzFftnAi8Es1NfmoA6qYYfcq3MhnOiqZOcRgK3xj6y+AZTe1
	 AfA35gdzSpgNAZsycXSsVN9jAgPbzUHTqL/Ht75AsiHATT3Qcp7cIVB9OsteqFNzlS
	 qDFZ6PC1bSO5kwWX0p4Ch4xtZjqwkLGNQxkz7YQJuoUznU4b8bRM/U+IiMi0d7XXEi
	 So1FljWndnYYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EDEC001DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 11:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169149378867.466.17494165031359268885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dec3b8771f898cc02dc5b1f57bf5e794c1f8282e6c55b41bfe8b649a14e3fbe4
Date: Tue, 08 Aug 2023 11:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691493788

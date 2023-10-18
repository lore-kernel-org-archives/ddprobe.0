Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A9D2182BA
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 22:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCVhuAjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0ED9CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 22:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697669293;
	bh=CEpECN7PT3YevbhiJWG2ALR6xiDfsk5lHZ2RovzVgAU=;
	h=To:Subject:From:Date:From;
	b=hCVhuAjmRNHY9WTgghotl8IBCE/pvN/T5FvMkGmAYBLZ8bZZ608s3mFhOiGA6Tk0e
	 9M0bN1M8AEcbfoY4LcHtFbXeX1kbcQ7xWfe6hj6f8R3SL/L7hXQDL2GX/IeUxhGj29
	 r/i9hC1S0IntdFvC3O0rdzoDvgKJ70gdXpw+dE+3RotkyrPztG8efxO/OL6peqMxcZ
	 TL5n53Bp+cywPeAY3aaNHQd8/VDmVAIC7QWXmjcxM+n40jQ+UbDOzlJr7aJKMDbKv5
	 wGSqAJxCzYTWYgUDgRNAoOAJYOYv4lYI1l57Qm9BQ8dPiscIoODwuPXc8MnxYPg7RQ
	 gWV2t74r7l86g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE96CCDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 22:48:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169766929285.25757.1190505801011502768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc0fe02dd9943644a5f5deb833dc794e39f3b8af82fd6f0a4a79f36c2b36a7f0
Date: Wed, 18 Oct 2023 22:48:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697669292

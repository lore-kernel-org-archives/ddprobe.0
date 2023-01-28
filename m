Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6202C9C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5624C4339B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674864185;
	bh=iH9hrobXV5AJqUy5SjdJn1aQpvLFl7vjYK5MSqA6boU=;
	h=To:Subject:From:Date:From;
	b=S2xNPyazzuYDjffvQqEIukJA1jV94lsC6R9qc2k2fLTZ3zkMjnzu00XWU/aMkkhVe
	 sW6YYRep4Yd7a6ieIlrbdXH5/evKl56JG31BTLiL00gPrRNC13ftYaWGcDjmxsO86P
	 XuvKh1BB4cY2fiQBOYcvtHgP5dgUsek+YNN4KrZEswiwu95BU86UFIy0qeFaKzLGgO
	 Pq4fClvPblXsJ7svwJRdlPGwwrB7OZdXigejFwwXSYHDmWTx5+oCu2SKVFlevtW4T6
	 aW7HTw8CSQgJXGwb3RClf8mXMwURQczMFAKQsupOvk/00eXTvYNmDEuQN0TMp0tl4e
	 vD4Fcp6gDzAdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DC0C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167486418575.2720.7030007516468020321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b34506f7dd15f6a1432baf1dd75c41fb41e20de8529b312bf999b4d5c36df4
Date: Sat, 28 Jan 2023 00:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674864185

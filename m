Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34B0BA4A
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87734C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668529254;
	bh=72kw7bFqc1brCJ5O0yfYMfu+oWjf5XuInUuG7njadsY=;
	h=To:Subject:From:Date:From;
	b=GjeIkGggeQsB+cjdpDISudtJxbBcbys0XblR2fr3U0rmjhNs7hEsSCB7+IsunWT4f
	 J0PjgKv9EyTEl9wemZv8k5TbgJvDrX6KSuPki5ofS2KiT+EPTjlIjTn9Tukq5Ol5xd
	 WnaD9bfGGbwbckT1aA2tcn5mgGBygB1IyH6CbnIDaLb8Rs6rae2f0NOm1kcPR4PB9j
	 253TeT2GhMQLRfF+Ukqr2CnnHn5WI7JKcd6tQv8/6tQ1tyz/sONHAL2bwaLeDIWCmX
	 XvF54PWwWPZsYviOuLoDsQCPUd2liHMD7SgEdAXXo0ZIoCLwBf9JXK/IXq8yGCcuCW
	 K1dIKnrwVAOuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A6DFC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166852925441.14568.1610534785205488249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92d6a5a96d4ef678ba6c67e65a900dd4ff9e2b040450ffd8eba91e4c2e6359e
Date: Tue, 15 Nov 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668529254

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107C541744
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUg68LlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89DD2C433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699972696;
	bh=jJaw+7lWhF/HE7/zUjFddcfM5H5U8WnaNUg+/fWh4ZA=;
	h=To:Subject:From:Date:From;
	b=VUg68LlPiG4zL2VkWPa9tAnKfbn5HKLaNA3yrgis9nmzfhxiXBqaejrCXXjiaPdjE
	 wSle2PrOWCnmKRjGdosvZjP3wKuK0u2hLO9z6N6xAFc15D4Iuq1OVva1DP5oJ7+FcN
	 7lupAPcu7dwZxqUfc1mZ+1gfHjQ30+a+WpkETgVFABWie3eri9NlpTRtYZ6HpGLqiu
	 pqLuvNgJR0XQQEEV/RA1fvH9IeSxpcVpZIrJJS2Ya+Fn6CYR+S6Hp5JpmU736b/Q6I
	 mSjVmrtO2sEoW4DgUhQ+mxSSyQGmN7p6BQX5FwyU3eg7NxQ9NsEIGF7ZFRRV6qa+HC
	 rQKml0dKsKgBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC42C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169997269642.25036.563015449854902013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5132115cbb0ff2cbceb4fccbd0c9efb59b21a2c62cf1b8c3b8bb8c5db9b5b55d
Date: Tue, 14 Nov 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699972696

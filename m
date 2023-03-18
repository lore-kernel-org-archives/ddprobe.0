Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B56C2F46
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 16:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D668BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 16:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679156525;
	bh=bPRZ3+Kpd+6KmVSedZ5jyGYOLcDtAsia0YXxu3C7H+k=;
	h=To:Subject:From:Date:From;
	b=fgY1BuBN4hdncINSeCQUOVLTSR4EmNCikNajdJOA4pm4Necqfp6N9vIzSQNOnCX2/
	 Bma78CIOd3iUhit5p0T7A59xtVR0E6EOsFkeoMfooFNnbKRfzB5aiyBrEj/rE1p6Pb
	 iF+QphCsFmdgC0GN09MQLB1kTI1WfG2ZMxwyBhZFA529hoa2uQbRqRkiBsB2t7HR2E
	 97d4hYrx+8YDAi26BC7O7cW63T2uKETCHs/JXS8sKwgU819vL3WH6JoRway60KppJU
	 Lie/Tm0AsZCEqyQ9A8UIBCQE4+vyhz82wt9mNArrWzZNiw8NWg0eljCRNB35DzWuPl
	 FAuXN60S3/XyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B3EC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 16:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167915652575.32132.6139557411061635483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f479f91e86673bb45cd6e682e6bf3f13552c10e558c0e91e4a7e645ff017bc
Date: Sat, 18 Mar 2023 16:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679156525

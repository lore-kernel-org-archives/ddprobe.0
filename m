Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3970279E0
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 21:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCD5C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 21:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681595705;
	bh=aunXnVGhYpUrDORLlgIGwuXNTl6HtmNfTgXmeCQmDp4=;
	h=To:Subject:From:Date:From;
	b=V6QET4D3DcOBnE5e9bc06Gj8oWSJDoBZx3TBL++/RgF6rRPpxdg+jzAq8Vln/BGvM
	 uq0vumpvcFIDZRzCB/FOUBQXhiWmepLtq0DWhNPWzuPmK31kPR7l4elPgP+RLW7/GJ
	 kt0n05nkTKk7zv7bbpz+7i969FjQktet0vfYRtXJJrb/edeAgzfAiRhKo1ljCHVw2N
	 lplKiotE2ukAlv8tjf0q63LKJeImHcUrfH9ZTGoXon9p1bKQBX2zX2OLvsAoWInG9R
	 Npp8PJTpy9YtyhOJn14+8LMS+EpfSKTm/hglbXIsz5rbbGB6xgOzRTy0kxL92ZdUbD
	 VjYY3N4LzaGPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7F7C77B70
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 21:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168159570576.19944.3710465169738445079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04931c063c258d870eb2f5992cc146a15aa6a0a1f4c2bafc78b4d7b8b1a69984
Date: Sat, 15 Apr 2023 21:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681595705

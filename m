Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719A36FB1
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 12:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1DC39C433EF
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 12:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684843386;
	bh=+VHG0ZDDvN64NcBimJNP605kHSbGrunmWOM0i/TdepU=;
	h=To:Subject:From:Date:From;
	b=RspBorQ6VX5VOoX0RBUIUmJ01lO7wbn5cwjhHWfcQWM8TFd9gmOACYSif75oVUKvW
	 qU8H7omfEJJXE8aUHmbrmBPuk7GNV9wiJJNAwjReGITc5SjxGkQGBCKBAuodorr+HW
	 NSH1dRB/KgKcKSuvWQ0dQ+4U0dnLQAn+VDDk+F6KUWbEtLM5xePDgErS19PHMKCrzM
	 YzHKfeN/IlC29IC+D0s2DLInSTEcrdUUaAmXl2DZIZSlCweYTe1OqGMkQ/Dy3Wjv9i
	 epF1NjFbML8UuHdaFNJurvViKC/oVjEEuu1LDE7sY7dhz0iHjHalDcZjFEhJdkK2be
	 7qpJOzt0IMPqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDDE8C7EE23
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 12:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168484338595.18672.9588152279744140054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be71f4ee1bd75219bd860d34d4817eefbfa7b26c3b2b59a62174eb78507cac1c
Date: Tue, 23 May 2023 12:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684843385

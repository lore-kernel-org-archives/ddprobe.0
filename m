Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C2D8BF0
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB85C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669641054;
	bh=oE4eS3xmIzi/bsYe9J0GE+E5sNB93jvMj5RrmN5Xakg=;
	h=To:Subject:From:Date:From;
	b=L/cfKEYfpsWASkkoO4+Id5vcRk09htNAoTsuEfLCcgKtHMMnAXTghwrRn/xfoJ49K
	 QVwWj/6L5XTUNJwut9egM/kaVLOu+vrSMGs6758XzYNmHr/rdeptv8CCv5wfhU7DLm
	 LI8r7dhGgMDz9r3NTntFi4qY2JmYskMvIP3Cg5ZVB1w+930tyqhoK+nxAWRzQLRJi3
	 7fLvt9eGr4QAyAKrzAbnbVTMD5eDYsclrFB6xWBBQHnXKkVaNmsvBbsm2EB8casnWZ
	 EjtVHOpDAoThbVMx9CrNeuTQ6QLDymEXdDICYwGk5bQZd4+88ydbwGNkhQ/ubcHwoa
	 B31GAfzmg7AhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509A9C43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166964105432.7873.1734913285176885745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c493f70cfda63fed077cf0f8af863ce542dde52e1f4c440b12695bd74282c0b8
Date: Mon, 28 Nov 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669641054

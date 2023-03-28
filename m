Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434BB23A1
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 11:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7789C4339B
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 11:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680002585;
	bh=l6rjRb+TW/XEeEfxqwRFi8To6GVVMCdyJiF/7Zdxy6s=;
	h=To:Subject:From:Date:From;
	b=ZwfcRSSIBIqBwyOVe0xUpdjP/h2umjQNBRY2/K//G5ZXGCp9GDbaVl19AJ22uupGN
	 vdhxLeNRhxWGV16ccLWnEfw74ffgXrvS+D53v04GoLymTVXRcHrLvtQDPux9Eq/aPG
	 0EjlRzy/EdoCTYo4c8YV5AO5tcrKddiNzeLKQuPo2RgXCP3dk2Dd4e71J75435ljXN
	 hJSWzfzfYyjnk3vwjgjbK0HOscAU8G20s/x2qt9xu4Q9d0nkOKYaMdOuHyvP2Olmf5
	 3B7zOvWboqqttJlqNf6kFWccXi+DveADizVfyAS/gqujlqWTZQ2wXeLmMZiOMS0cip
	 z9t/8hpy197Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8384C76195
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 11:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168000258574.8522.11499961768248828559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682a7c33c4b4dd6164210605694d38c5c5b96d6f0a14c8e53d1926704a7962a5
Date: Tue, 28 Mar 2023 11:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680002585

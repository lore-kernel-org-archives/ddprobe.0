Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E838910EA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90C80C433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673839287;
	bh=JWWhjqj0OCw9lmqClt7Glz9j6KKwCUViFDyHE/Xqhw0=;
	h=To:Subject:From:Date:From;
	b=CUIwgplUSgkjacldNiH5+lKcdp001mbflFZH8TuDntNGSKsF8fFhRp4nkJcg2/A+z
	 Txz/gDqOe/Dq3FjaaJu6ohPoXtyhu+/lxj9a9hVMBnumWcC2KV60kIT3gfqjstcs3W
	 O2s8IoBijEyFzxolE1OvVjxZnZDUS8t3TzboErdH2CXic9ggQylYHP+hHeuYMg1jNL
	 1iwBpb9by2ard9v+/fxBhjUZY9AEmTJszNITgJTq/K9MGcbpfZGQDKyoonmifp5C9H
	 bu026FWA4N9SERX4phCb1kAV/RL78j18rN8XxLdvqhUwjhPYBlVBiBn2f9xuDYbXw9
	 9+JS4/x4L0xwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7191DC54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167383928742.32056.17564939072975603037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c93d03aad335b2386506440603be4a1189f24a279de199af99edd98183d59a2
Date: Mon, 16 Jan 2023 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673839287

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C941B7B
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F13C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664056253;
	bh=KBlABRkIPFzirrD2qQkgYSiHOjJInBWLrm/yLMY4i80=;
	h=To:Subject:From:Date:From;
	b=MGCNzSdtQpiwkTuGmuJ/gS+rF8aBCLZZORAs1IfurwlagQPfwRimH9RlEo2yazd/X
	 uunmhN5zdQgZtlICk6WiQJl2iOWwlw8KPrtSFIO70ftNXLRHBxe0A5FTccy2YPTu+6
	 K57CwG1skpEwhCUll8OgoJ8Bn2jsczJmdoQ0o4YOhQpHrG4X5qmYvmRlktP1DBDoYG
	 rlb7BEogOUsNiHq7LEhxXuBoM2QbxfUsp4SXSYCAZcla8U40tkprZjU9u5r8XV46FJ
	 uKDOGRBQH7LFaM/8e4hAk1ygvjaNkHd3XODg9zk0wp8oQ7rF4rJGbiCwZ9Rdf79uHe
	 gciu7GCVMy2Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 596AAC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166405625334.4498.15485715864003506675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d70c654a9c87dc71fdd287d77088885a73f07314e70e893e28a5388c010db24
Date: Sat, 24 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664056253

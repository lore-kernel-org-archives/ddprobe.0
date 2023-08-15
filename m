Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67DF017C4
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 01:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA68BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 01:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692063788;
	bh=TsQvjEDlPpGz8yWD1vCmbBjIVuOh4DPx3xc5rxgVibE=;
	h=To:Subject:From:Date:From;
	b=Yy0oq9UzyinnX+4mDWO/v8GimGOiBOWLmfBlZ/oDULjl5fIcF6rqR+BHQkQ1eVBSt
	 8u170tep6IUyDW1t/FzWqAmlP5qT9DXQyZ0sd2drKHI1iJw6vHzDQETt4YosCODo7y
	 xBhpAFuhvxqypKpR8QenEBGRhbRIaI2Vt/Cg/j90INzzfjLwRLyPiW4vsqkoU1AdUC
	 lgVjzNjgUvyMdZjE2M+PTNCtiOtC+1MEgcZaV23wQtg1k2V75QlN8Qr87udGMMwThG
	 tmT6Jh/9yp4QtZev2HawH743hfRXMrP3pftR4SNKpULE//4/bwdfqGN3InWp8wNzd+
	 Juc3rdsK2hGmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2930C001DB
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 01:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169206378865.18706.4529806018041508058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed0972d17c8539a84a3ca4a80772db793daeb3645a86f8fa801ef1260e4ba6ca
Date: Tue, 15 Aug 2023 01:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692063788

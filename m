Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85B717E6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71320C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664035253;
	bh=Bb6HO0IkVw02/8Twnt0S+ryyMKfqaP94EL2awOomSOU=;
	h=To:Subject:From:Date:From;
	b=ZeMWZQLnwqtWzGZJbqWNU3xzVMJrEcakyXKw9PjHBpgmhmEEXJElG25aVOdI0jHPD
	 M/Mza27X5BTa2etduQvwynyUlmVs9YDQH2S4HIof2bMzLoW+ai4/PCcB4Ef2UYXF5r
	 oKQ/vNn+EEYvpna7byIV/FsUO041l/6AlRcJ22UwhCgGTebbwfKOOzfuZfKVykvb9B
	 ahBFhYrohJYoEUqx04gVswzOA26K0eDfCdhDGrP2VgtGdJQx0zH7f1dOA9lYVhYAgW
	 rP+2AvJZT31nYOkadYi4gNKxe5Z2icVLJana+viBCy2v25vPo69RkpmPl3KWiYfaqW
	 SLT8KQ8zV4BEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 577D6C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166403525334.8269.12274356495149167287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d77b242caa8179a8c8e978430fc1a42948a7ad820b66cef2c319a57a309c8ef
Date: Sat, 24 Sep 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664035253

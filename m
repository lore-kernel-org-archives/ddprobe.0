Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A65BF1119
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 06:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93AEC433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 06:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687243928;
	bh=UUJSvEG59W6k3zbLM1HR60SvQU9GpU8KjqyHmzTsil4=;
	h=To:Subject:From:Date:From;
	b=t41FXSim6XTxtEO7QirauKFRKPIKtIHzI5N9G/bb/5j+vwkNdw4bvjPT0E6r08XHg
	 pZhnoWwz3D0hVbIdbRXZ/2i3oR8Z/TlHVVPgUoxZZXKde5LQIz+QmoTo9Q4VmVwy3w
	 liAGK17baHRrJuoM8GMBSnpuXNS2aJ4k/EwyK2AQ6bijeIfqh7bEC9TBjt6YrkeygJ
	 e70MJLePjBFIxSi87YX7EshpF0b7WBTHxJ96tUz+3ZOki/eRRztS+UZl10dSrhsvZP
	 xwwuqq026RzvQxScjqvtKXeC04g4OOJrA94RndIVsA/18G+dq5T6ujcApWhVw77Irc
	 y2viqzzURoPuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B010DEB64D8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 06:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168724392871.29773.712647121847830065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4705bbd4e6dd40c1fc9f2963ea24cf855abe9491dc69a7d8355f7528a01842b
Date: Tue, 20 Jun 2023 06:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687243928

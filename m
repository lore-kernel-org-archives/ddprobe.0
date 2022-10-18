Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1BCC4C72
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB9AC433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666114253;
	bh=ZBQLIgY0eG49K3c6KfRbZldAw/3N85hIPg4dUK4q5Gc=;
	h=To:Subject:From:Date:From;
	b=kDZLIYwemRLpcER3+QJhML8hmGs7tjKtb2t7WZz1fNIahcpWEsseNQUk+9Hem2rrT
	 5E/u9gZeUdMS/IfUEiODZXjRtwoLpymWG6Yg+CBUkx9qFHSx/ZCt7Ao/EuB+ToByWP
	 67WQUVzHYVRFA1COEgww3pbHTP4M/FfIVbeZ9v8l7+x2fcERYCHXEO1pAGfX4WMvqv
	 jtZ3OyefSSHnR3Jr1FLeSwyrC6R2p1ouUrs9fuIscbnLyeuw6TPeyoKpKWO23qbYYz
	 bSsnGVYHq3M1f9IjtmhxmLMhk0E05l1WE7ZK7rnjPuZ/ZsnD445cVlzF+kNuf2CbS3
	 opcpX19NKbm9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51583C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166611425332.14259.3184155156446658944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c39c672159a505a3af8869bd44dc0705a1d55fb1b290859b23b6b66ba8855b49
Date: Tue, 18 Oct 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666114253

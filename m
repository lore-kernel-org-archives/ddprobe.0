Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98DF6AA9
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C3DAC433D7
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662046253;
	bh=0BSHl23gGFFocriosnNLCsq0nBIoCImnPDE9GEmg7Lo=;
	h=To:Subject:From:Date:From;
	b=N8sa8m/lELMdA1UNdMBl+T0JC2zk3c4s/m8OP+Cn63dqfAfXIeBEiB6X7tfrTf6Xf
	 89Ex67FQy1fnpZQ6Og/QZAMbuXfTmRNXQubSAawAYbZomBnectmtU1Gt3hyjVvKPYE
	 VYelx+jiGbziBoZxr4L4o1jNdVFj0E29TLn+6GJ0cuzhORyfCGhrW9nLBFWD13ZK6l
	 l55v/qW/ZwQoxJ3DCg6OHhBlrLVLNXvJc41ctTej65II/vVc9iM0AgXVvmZJCax4VH
	 pmh2n65r0lyf00gsDSw8HIqLlTIvIZGPLP0V40L+Fv7pndry1WjXDgvgL7sBeCqQgx
	 gJ8ONRONlSQFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A00ECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166204625333.8122.2164502336404656764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d018bf242e60fd67cd3fea145f6331f8532e4838f2ed5884639ca996ce88e45
Date: Thu, 01 Sep 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662046253

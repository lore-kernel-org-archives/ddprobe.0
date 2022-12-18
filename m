Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D922CA41
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8301FC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671395487;
	bh=dYX6sL0egYoea5dP7JL0Z94j7bIzD6BXDDLTfYS9P3w=;
	h=To:Subject:From:Date:From;
	b=j2yX9k/VF7OpRWzaFO5QFaK+ISKZxW0HstmUQfArtXeMgUfBdPYpzbuoL4HydghGr
	 zsBwocAo+bnDtQARALjl0FRybPUU9lzZ7hbly5q0M+Lf2DEguZZVa0DPwmLbpa59XD
	 lhoVMGnQ/czklGlxWsZ7IX61UzXSYS2uASxAICk2wFw0VNftNxq8j3+o6Qi4LJgNg+
	 fVrWe22TCmd46YPKvWVbOVE8k643hnnDx5M5eXSgxJD7rGAzkeSCfZYPLVtS5hQ8RE
	 jWIEPXVPCOgy0Exkl5w6GCPVD6SaP+c+EbdZEmsmCPxTYowWKvzbXY+ibVVonW1QOi
	 xIoJwb2l2jCfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66BB0C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167139548741.27205.10625492076964173744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72c9c73c5afb5a2fe7a2b639e1047e1e10324d4c002d2f599646db44c6d07af
Date: Sun, 18 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671395487

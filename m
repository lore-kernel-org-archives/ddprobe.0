Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62521A71D
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUKyeMWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 952B8C433C9
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699277896;
	bh=GXmqnjsmNhJ9vXWc/k2VK89r6z69Q7caM9zytjp2/Ek=;
	h=To:Subject:From:Date:From;
	b=AUKyeMWnbiGC9U5QlDTlyMlfnyscwNhdW/G+8CQFIpmDBR7ddny5u/RN9+YfvyFYM
	 JvBSkcgQN1hU+nvZFd95lGH+aptl8TqTIp99qeJbm14xV2NoTwtoMC9qNtH53BtHtr
	 XO046+1NS09oeBzbp4X588jD8kJjzt0K6ePUXINwztDPyXTdTLtFCy2r9q7XOsriWb
	 RaduGUy4Fjh5U3It7R3faGJFibj173Ixyl5xS3FTAmTvkkYT3dTaGCnKoO9ARCPKyJ
	 0e5lG+67loKN1KYF9M78sLDPq5dXOQo7z9WwjKDy64BOC4oO2VZEZ/UnVKTzd4bjOh
	 im95UtQbjBWkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7932DC4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169927789648.6046.16525294139001948889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cd5de17fa3504213382cad330d46ca83b988ff903d67ff43869e944949beb30
Date: Mon, 06 Nov 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699277896

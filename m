Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA24A803
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B7EC433D7
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665890453;
	bh=z2H4SLBfwNIFOizh6SyciUJQDQTCJ5bHVY19dbxyOPw=;
	h=To:Subject:From:Date:From;
	b=vNSs9FZo8hBelTG0510yY4s6HBl1rlVPaDmO6CPmKyRpq+kQurLFKzO8d2tSjqHGc
	 PeZ/RAvnhhWCryVMwbwmQwt+i1iGKdU7zx3V6ZdoltYTTxPrm0ukQvcIZWG49b0N/S
	 RnNXErnVjnNU/Gtg9yMsA8ceh0G0dzFVYY7HuD4pKB9LCtEVychsp4SSuMIscrjLmX
	 3fEvzBL6k6gGAirDXPWsM2wzybsAbhLBONEnHSK7Px3+GIMYtDjmkUaNFWATxYzjdd
	 O5JgrxRWvDfNhAjt1N67OV4WKVp6k5xbmbTDMnyENqtZbXrqfWLOzjj/7myBTEwtBy
	 z+dR8vhNQ5XxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A09C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166589045333.23934.4075784941791433246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78b6c8315bc8ecc4cfc08440df986c177262180f7f9038eaef3c46a90df3941
Date: Sun, 16 Oct 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665890453

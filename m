Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05AC0137E
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JE7LQBf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C80C433C8
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700969896;
	bh=80qo89X7sIj9G39Q77B/mSgEd+0VryCSy0YRnPNgzfo=;
	h=To:Subject:From:Date:From;
	b=JE7LQBf38urieJgsJxdJ0SxvoZYFR33s4np5jDDERh5g+gXVnnpVzz07if5ilhxDL
	 QkOKYeLhwQpeKkPWt0w9iqmLIVRdHvoku5/CStQwj889jtDbbfPdJNCMSgg5a0pwHH
	 Q065gQkQBO6YVUmkPFRLiDEj7gr1Lgy8ALm5uhuV23lX2JGXsOqHyNNnmf7UNzWMNO
	 Dfpis5lnBubA5Na+PpiRGmrcplBhf7HfFAtrE1B8JK03RAUREI1r51a24w6LfrySCF
	 7Ch4yvBgTFoxWW9fHygQEG5RqshtfD4KCLt5EM7/kU99GcB0BxdpxfHMlMRnJr9f6D
	 R8N1kq5UYcZ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 676D3C4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170096989638.671.2350292060400529460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4210e65f9155001a9ae420b0a4b458c29cd6482a0a05454ed33c37c621d9001
Date: Sun, 26 Nov 2023 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700969896

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67117E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88419C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672623087;
	bh=2BWvRSw2if1fKPf++flfkjPFzWmy+nqJh+T2fxXC90w=;
	h=To:Subject:From:Date:From;
	b=kcEb0yKHiwy/3hHAy8WXc3gpUZ1wN7Rft6/LAa4KQ3GEwHXbSwnPrmImC4mNOCcmJ
	 dZ456WUzgnXNJuZnuT3z4Wsg5dtwTDjCNMvYobD7UDZy95KpIMh00hevNpbfJ5pYSS
	 0ujt767zhc+OmJtzv4o2ZtdQJXfZRt7I11JsYf2a05H+AV5VmxoVU0gBQMzCepRXlV
	 tz/TKWdvKFfmMVrwIQ0p8HqfxaIcgAUsSE28E7x/M4fDDQG5hWWevC1+Ue/73DUNqp
	 VDS4Tg3XY6Jj48iSA9iPQ1Bu98WTUCHLNPqWThzDy79/0+yg8rvM0o7JSlUcKCcerR
	 tvxQkTe2Ug+wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 668B5C4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167262308738.4643.16265839035208743839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4acea12e113a2e4d45a610c7ecb0f1e6d8bc5b4688997d7a1aeb780fa8480a
Date: Mon, 02 Jan 2023 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672623087

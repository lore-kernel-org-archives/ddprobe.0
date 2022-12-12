Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE237B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83088C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670803287;
	bh=iqYx28np0nEZ0lznYyJTN+hq0eh55fhYf4gr/pH4GpM=;
	h=To:Subject:From:Date:From;
	b=r2M49MfFuRHGovP8lKKCU1Xsx6JxFkvkKqexMxwBh2IqeZzBcHpVvX/iqO9/gULVr
	 q/sFbO6egKLBFyJI61PkE2fQASbWdoZA91WpW2P/VBYLPsfEcv9edpTiUSo8tObJqG
	 +7ut2bbSXPZ3D5FU48RFC9MibcxfvS7K0EM7XVPMGFyz81s/lY0Uo7W9agw+YJOYo5
	 XN/j53J2IJ4Ma7Nje4l1hoboQmYoIKee2gpKGWQWcJSCF7nvDSfVW1g4elt5uQwvzy
	 G+EKCz7i9eV+Z6x/SNQPKzUmE0ACwOMNJg3N7qfXaKFjdXTePi7HTy3dZylL/l93yE
	 NJwCdoxqAkJUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64FADC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167080328739.17232.17160653010640538860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6715e65b74ecec4e1acc2d4f8735a4cb3d230fa825cde99c2e8d94170b71b602
Date: Mon, 12 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670803287

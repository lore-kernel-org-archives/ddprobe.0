Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96407B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D60FC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670101254;
	bh=B6W0IiL5DCYJhouMJ++5Pt0lkLiURPe9io2VBpp4r0Q=;
	h=To:Subject:From:Date:From;
	b=Azfi5nYKoy2CYSmRXXytRjOink0aWtqef8rOknHH5r4tkFQRSvO7wr9IaZ3IiyPGP
	 2aM7umC0svLulKw8Wa7kswH8KOYfOE6mJNulaeyrqTlbns8v7fac7wu7j0Ll3rh1dF
	 NU2LNQjHZJJ6cEPqDOg1w5NOPgrzgcKaBLfFyvdF8fhgugVLP56h8vehQeoo6plswS
	 2/yZRoGVNa8juowmUqpseDijyjzE7ywgaApTvmVRyMPsNW5NdVJByLu60dlRlQbvdT
	 JmukT4M1sandTNB5e3ORupKDaCUyiCnkYstrlHtZJpxfF1bOLIM3ysu7vuWSr7jp9g
	 iIiOpvNE3C6sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F2EC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167010125431.10737.5292814691161451187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1e2f37d4913a925f91ab04a7f76a48543e788f7dccc31d7ee440d1363cf0533
Date: Sat, 03 Dec 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670101254

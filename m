Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409F762D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 04:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9712C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 04:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679026205;
	bh=faSAOfGkxZaqwqXkRaqvhsCSMUbvA7SA6duMYITqLxc=;
	h=To:Subject:From:Date:From;
	b=TsqzJZB0NYmFJkFS792s3K8uNzKP6VuQlZRXQPPT+ZZc6kLLxt+5QNg70ssg1NNqA
	 T4NeB0nUU/Ik1tccGrQg1gp25dtM+6I84jrl/dmmrs4b5TvrwpCNKCnKnuSIkatptR
	 RWMIOcBnH3D45zfOuMt2wyI5vuPftBeckbXMgGJEQURp4Zb+QZWUrlZPfjrDDkyb6a
	 D34nzC9QFQ8SyKA9Nbctlmdr6rpMK5gF0wmMV0SYolguGOW8Q0lyvVl7pw/vpugaLo
	 YO4MyNSiP+Ac+JIpYy52Bn5xRTGqM2UdROd1hKE/nW98mPtl45NuGlh+OT2TMcigcX
	 41xtV3HYnIWUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4327C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 04:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167902620572.16072.15473331625084122763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d35eaf8eb2ad1c932946657cc01eabd248a7515797523681fd63f144d8764a
Date: Fri, 17 Mar 2023 04:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679026205

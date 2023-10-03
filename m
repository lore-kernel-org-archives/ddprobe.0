Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3631875
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 06:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47EAC433C7
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 06:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696313168;
	bh=jr4QmmqFBYpJCX3uTP4R+AiZSKqAHWOSbANEwX4NzUQ=;
	h=To:Subject:From:Date:From;
	b=EFgexiW5Sb3ciufWLMkVOWwOcBDJh3VOz15zwYXcnnIvUTnTP+hJw0G+ul+vv2HGR
	 JKf60hRVyHEyYwVwTYNpjfiFS4Px/IZ2leSSbaJp5JQUsjPKBJnWSMpLS8u0xMfw7K
	 l2SJ/LWUKjqbhu5b/C7+JuXqBf0z16v72wh+KUTJCvA5PAOkimSYqnPc5DCLLyz+ai
	 IKhecBRaDGb2Sy/3o50cgRBV8a7co02Y/OHYuNiNZjempJQf9XF2NRiPlx64Vb9PON
	 XMhg1qt7vqC7T33GJybqdiC90Spr4FIa2FZElLU9wVOsTLSbfU4D5lnYUVXu8b5uHp
	 4oClWMOpqKgXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5ED7E7542A
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 06:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169631316871.22353.12733426430700421510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e79802f8f98f3d796d4be1bb4663f684917079e67b1fd07645f8081bcecd253
Date: Tue, 03 Oct 2023 06:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696313168

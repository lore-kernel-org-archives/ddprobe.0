Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81E9E63C4
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 10:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13D4C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 10:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693908848;
	bh=AdzMSK6tL6xhecRZnKOTd7ckHaU8AlhIBmnVgTzgcg4=;
	h=To:Subject:From:Date:From;
	b=RGifrHcAZszSUPBIL0QzsqqDyB9PpfUVTwZaxFYv3qQFVfd7F92KnCon0O2hBm6WO
	 YRa0zVXfAMmakIFGeXSxdnW2AeuY38qiHpu2wjH5Ers8ypXAXpi+DA8MUpGh94GKT/
	 naFbanaPU7lKiiUbFcAFbqIV030sFeGLFS27LhFHD8IRAn+V+M+bmLs2MPAGVCjeU4
	 X6Z7AQubq5y9JWRe67WughC9tUd69sMFjGrSYGLP1WlB+QlwmVcVoLUJ5Vtt7+RX5x
	 lkk7xEZ/Mhuet60Tv/W4R2AnwUUSC/I//Hx3TPrVSvJ+MfXH31ycnxVgruz3yy+kC9
	 e8OhP2uxTWUIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88D3C83F33
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 10:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169390884868.16866.4139074026245938000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf9359946e0c4bec3681e8b57aca5412daa795242fe893e1d8eb92f1cfb960c
Date: Tue, 05 Sep 2023 10:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693908848

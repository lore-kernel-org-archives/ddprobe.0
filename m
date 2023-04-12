Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4706020EE
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 08:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F14EEC433EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 08:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681287126;
	bh=j3TyKju1OS9ZiB7Wb3yD7jwZ1WGM3z+0FTDAkW87xhw=;
	h=To:Subject:From:Date:From;
	b=FmXhY2iFrpky5GsalXjUAEPTS5Z/Xq5fV6YF+hwTuB2a/s7UHQSpksp3ZQlYhot/s
	 nCvFl8+63vz3T2H0XGqv6+xaM150rLlZX44gMlnt+tBCFlLz/pv+n5/8mvAA+gGRpE
	 YwAPTeaJbAZ01pRV9PxaQ6+nJav8O3LM2HiuR85+yMMT1AwlirAPk3Vj6gskJK0wsJ
	 OVnv+sr/CD1hV5gwQdTrma3Ig1G1PAAwV/ni4sTXUB+w6jCO1VByzX9rvqMqOhD1j7
	 kITTmIuBPDEcnAwxVVhgWC7ykYZYOJ2YOtKU861LOr/X0UKUxxv2rm+lSZw/TwQkOI
	 YqiYTq7ewf+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F84C7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 08:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168128712578.9264.594503881063659997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3704a5bfad3c6a359d19eccd51b9ace7e83623fa16d9d5738a56c420e9d2ccac
Date: Wed, 12 Apr 2023 08:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681287125

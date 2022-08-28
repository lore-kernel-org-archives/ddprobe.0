Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59A2182
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AEF9C433B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661662252;
	bh=xwYaUM2YiHN4Jki6COys+raKxEreOYXyISPidI8jiyQ=;
	h=To:Subject:From:Date:From;
	b=Mz8g+KUcQhhczQ+pGZubBjwxbjzRsVKSxhJHm/qlh9idZ2FobFUqGEW6xXGth1PwN
	 1/emSMJkvhDENlVLxUonhh09HsA5Q4sLZR7OBGafd4cNGhuPgxODOjn357PsN7gUaC
	 lsRQrli6F6jBJUkU4Vox9PPScPTgbkCT8ivsyl2Khc+vjrkskxlrJD7mFmgfjvcW+F
	 QxCznSDUwDmjV3aHzd7x5IA02WIV8ElFlcyewcJK5L9Y/9hLFX4WF1J8+p6lrRMrDN
	 upFv3B7GDlXsoqLeNZQvV980hyqVRBvl/FSz+7alrdMrultEixEHymURVoWKNHBx+0
	 a+JlbcN9YrLiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F527C0502A
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166166225231.28427.10744630932156442715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46dec57682e131c9f77f9f3592530482f67c403bfc90076a62885759e443984
Date: Sun, 28 Aug 2022 04:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661662252

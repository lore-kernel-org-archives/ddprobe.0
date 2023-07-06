Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6986863BA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 22:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5BFC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 22:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688684228;
	bh=GrMXUFVoZWt7n7PRFhOrRBGopjz+4lUIuRScEtYTRqQ=;
	h=To:Subject:From:Date:From;
	b=FETdEAgYZb+9g+4ZspWBOSrMmsE5VM7Gi5ImvP8EDPpmua56QkDHpaaJZBBzAPasg
	 ZqydFB7RwZcCH4Ppej7W67IwQXDVaur9VUt/sUQ6PJZlfvbxrfQ8n/Xr7vmaYL53D8
	 TfBRwpxPGZBEqwwEoZImzs/yYM1sGLdhRznTPCbiWkhU9UZfYlT/F5GvCqY/BgfIDu
	 lk60qJyOS5RVeDUOrUq+XsSA2NY0Dsm6czBhTeDD/bvYT++P3eSJExHT9hEmGhKGOZ
	 hS/AMPktHstKTrZ/iSo/v1pCbCWLSSh2T2hkjWtAb44uUgAjgYuNAdwNI97NXg+kw7
	 W7y/bY1CDeR3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA47FEB64DC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 22:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168868422874.9870.14809288328590311539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70023836bc618f3bfeb366dfcf3ea43e28c306b5582e026fb5bb0933536c141
Date: Thu, 06 Jul 2023 22:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688684228

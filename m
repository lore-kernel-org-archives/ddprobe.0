Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B8817F1
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 10:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDA5BC433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 10:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686824349;
	bh=2zyCPvtzp/Sc1ONlNmnYWS9hGqHkCbwLveWkpxbEFL0=;
	h=To:Subject:From:Date:From;
	b=bX3h6NdY6AS2V1/WO+CWhYSUVMo576X8udXionKV3cFmXOGHkhkJr+UOSvwPNA2C4
	 y9qyz6cw06EmwdX1Ie2XZfAI6tZVAMDUlQobUSMZhNQPW1maRlRIMMPR9GSV6oMcIZ
	 3n/DCM8jhu01XefNkPcmZPCiGuHdj9IjNCVNL01BT64p6xeOA4EQ29DFcicL24woEV
	 rZWO6POjaR/FMuzOeRn4HDdTjmIB7v7ZvoaBWMC6wB/ziuP4tji7ChzuqXZKCOhMPV
	 I4hQsqUfD4S96HY0sdCeDfW17A3SLwqacP6Q+u51RsLXhFPgLaQeVRcRPIMXMoTneo
	 JHR48lgomGdog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D50ADEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 10:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168682434885.28321.3584608351186537666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9facf0d0ab9a832370be9a9d622b3003d80271692e921581852e9c9f3787f4b
Date: Thu, 15 Jun 2023 10:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686824348

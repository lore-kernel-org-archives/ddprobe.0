Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B22CB15A2
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B157C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663317653;
	bh=uTLojpXUZEPDxyjRVU7FFK7R0ItgSFqh+5OTuzn7YCs=;
	h=To:Subject:From:Date:From;
	b=T63ml+d6bbLyhyD1Dk8uE25LcUGE0Bw5kwcRMwpKhYobaupoSNjbOkFnnSESRuk9/
	 lKPE8epy6HF5hRh0vGDiIBNhGcZqE0+sp+/8Jwnn0LYcMuY204cGYBX9C4CG5BsxBC
	 CXp9SMnhkqTjHRV4NAncPchi51/wK81ck07PJUWkUwSBebqrUgrdOYdcyPhjIaCphi
	 nf5n79Ash9DrFuUsm0cE1W5BmEB4RK5dSAMo/E4kUvojdqeFwCDC/dbFFSsiNkU13I
	 Z086IR9Pz53LiH8RhmGK8xPq1rpYVMK7FPcVOOVZScd48b5ubUlaPsS4ECgMTX183F
	 dBqS1ePZekYyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51AB0ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166331765332.9081.12367973807784221308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911f126635ef6b380da1b7062cccb47592c380e9d1f53862586d035d521c8680
Date: Fri, 16 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663317653

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648477F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 02:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB725C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 02:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688695628;
	bh=VllYH8ObmfYVVrtbTH5rFT0JeGbUplnPeq7/bVtrfTw=;
	h=To:Subject:From:Date:From;
	b=n7xfKB4jpSOFCs1BeM/rkfGnNgyCGCMa86eNYZySGj/4Z2AdenGoBLaaMzh61l6D/
	 G4ckJUPoogumodPeIrKGjXmf6eQVmNprelGTPnNbq6/K0+j1bFQHEWCRpy+sCkoHjQ
	 CNHyWbCZI5+5u0ZuCvhm1eqV1kLyywsWe++5N+g4EsgJZD8cbX4lARVOTJBT3kBFdj
	 /Ucpd4IILXxl3Zb3WNVzMbI+y+Z8ImDWEeNj+/K/6Y5vAmwngetxhmFnSvPq3YWliz
	 w9DYcfP9J9Ddk5fpgcDe3NrVrpQVTw/5OaxsvtLFE4s2TRPHnoKbv387jB4d/NgZny
	 1+c2TvJiBpKSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B274DEB64DC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 02:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168869562872.18553.13222197047711995403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ab8e081d5fb405cff623d3cc920240acaab1a5e8bdbfaa2f35949fae67cc83
Date: Fri, 07 Jul 2023 02:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688695628

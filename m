Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C933D3200
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7406EC433D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661868053;
	bh=zH7Ar2HCenP67Zn0QH49QShkPvBefU7brjnbT4p/PS4=;
	h=To:Subject:From:Date:From;
	b=mOEEjjPiowOBVavISadcJle5MoON+vDoFc+iE7H+63hQdIw0SOktdt0zK2LofkaQN
	 MvbAA8xgVaB9T7XDaCJp2f8GQ3FkTnBt9fqMYS4MMreOrwwVmAVBRQW9qr7R/nTMBM
	 2ZnZQ4Um3WWw48EQ2lEoz33ULdKsBSpbq8GhcfXLsiOAe5zJmeLEBHNlq00rypGPRR
	 lYCV5y0S8/pg+fPiMleOxUprf88fHj7zvLjqJmt4iTM3ZMPArnZ65MczY0/frP+tIx
	 rbbNR1t0vUXHnmoMl0FpIXGgre84KF5an1H8Sc1vodvpfnvbOhIn1d3/xJRuRJ20+v
	 wVasg7Ya9lBCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5970CECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166186805335.18137.9669798703798095644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 995798278390672ba4b660851012f93b08b1e6103ff2437d5fc670b2bf9814bd
Date: Tue, 30 Aug 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661868053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD427E
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C53EC433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668989454;
	bh=YzqCfoFPmIb/Z3dNRiSbSJhG/oNma0eT587i2lCS5nM=;
	h=To:Subject:From:Date:From;
	b=bKjhyeZ91yKnOxEvpx13ACmqkqKVsVY8mFG5ujj9hRZfuN2hjGaZv+mNVCNFVGrjS
	 tA2x8SZOORY9RhM/Gp1NaTL0baaz+sctM7p2onLiTjcZ8V1b7CjL6CuMU00gWUClV1
	 xPqsfb9cqMXuW7n9R8nzDn8SPzTdEE+p7yR5OKsnkTJ5/OsPLP1PxyM2gYoSxvHp91
	 4KTPpmetAGkxhtm6Loce4+phUDI+dqYzuCy9gNxnlhu1Xv1+4Pa/LMro2/NuucZY5e
	 epgYXtAeuwW6A/BL3PW6FYwZENEZ3GPqPq0equ2gOT89yBm5BaCu+cPk5OT96Na4aq
	 lgtl2Fj0NeYAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58DBFC4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166898945432.23162.5818666939795177779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c9e1f56cb86609d15469aa067e920cb56c4e06710de7cbe2d0f4a5c6ca3764
Date: Mon, 21 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668989454

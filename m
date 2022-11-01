Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB47221D79
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D01C433D7
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667345454;
	bh=qE5spct4hysazXaaTXNcIxUVcizsSFMP+cm7QX3bjT0=;
	h=To:Subject:From:Date:From;
	b=A4921WvYDPv3wEYvoT4b99MIF5DNfPZQp7bOlRE5c5eurtSvB+gSTDPRl0O+2agED
	 ySLo+wevXQlmABvqXOQIVEtUljLPs4ujZzjPRKUK35nHHerUP5fac4c/IyxYHGrOrI
	 bqmb/tHJuAHyMcOEHQSy67WtQnHOMzsd4hfaE6SdATXf8Lsh/PJywtaMrfYKUhmJQI
	 GwFieQfqi7Hv6Hh20EEk6bid3nbcBJeZi058firQIsQXkiucsflKFEzujH6NDmc/Xz
	 WmWAUbGxX1Iyke5zoiD3yYO9iYrkgOXEk8Kl/HsMgcc5augx8JjLz+MMWav+IrOnpq
	 iYtXOjqx2e5JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614F0C4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166734545439.29261.3004664690108032819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3eaaaec6066f402338716af3817f67458bfd0f87cd12c3fa5b230c731a12909
Date: Tue, 01 Nov 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667345454

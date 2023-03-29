Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED38AFF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 15:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BD3C4339B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 15:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680102305;
	bh=sGTMycqK4SEoKitQ+b6Z7TsWHM5M2Hoy+1IM/qQJ8lg=;
	h=To:Subject:From:Date:From;
	b=J3rb34IOOZV0U5Xf92ZuSVz4pA5Xg70nvC+6eY2hxDMzjorXl6XAfOAE6X6z1jEV4
	 a7x5xAUMxuCBJjc9UHizRPPmVoNUwgCttbtxPedEg+3psvEq/9VMIun2YL0bnhmD7I
	 Ea9kNYJhSvqA4wiwvWNdvCs7uWDMmaKzmebGAKO11SW0AIDFuEkHWDhnm8a/78Xf2g
	 QnlgvfvkIdbf9lddeO6O5hqpCeBmVQ6+GZRrbbrEePRQp9ai8z3FgN4Nt++QpCiTpT
	 i+bpv+vJfHJJBRmxUYZcl5HRJ1EZ8/s5Wrc4EtL3rckfK3eLHnUn3jDPSbrytDQ+U3
	 M/F1BBXiqnpoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8944C74A5B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 15:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168010230574.12681.2038387567596761013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dfbeb3fba5377828a18947286eca275462c840d1bdb3abe6246f8b2fa610df0
Date: Wed, 29 Mar 2023 15:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680102305

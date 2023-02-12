Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6372FAE
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 18:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C09C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 18:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676225645;
	bh=XPTlF5T79GlDxb/ztSb7hYjD0dUF53gNc6FIUaUWdig=;
	h=To:Subject:From:Date:From;
	b=DGqZJ7fj5tMn3Zps+UXWT2f0zwHK/w853ryOBjx1OPQyNbE/su3bGWhHhm1XaYdWw
	 tJ0NcPMSWMXoe2UTnYevKdNipZjVw9UlSY0TT1y264A1A31eaZkQOpOrXS4r2NIzKP
	 B0HB3wVRtvFLgNEy+xCHtp56a0yEeI+Nr9QdviUezkfBAnGJhRoIdy+cYGje0XnR6r
	 mpISivVw8KEir/JO8Auji1EVO5e8UHqATZ/IoQ/nN/0JYnvM2HzWd0UOMa/ngQyCIo
	 ruhMOwX36h/D+93rZhuizI9OqbyQOA7Xq35W+lvEA7SLkj+0MB2d2yrtnL+JIgxgD+
	 NOv9leHNSGD0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C5AC636D3
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 18:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167622564578.12883.5279699247261920734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8bb31989d3f394d0432be125e05918a61d543af3ec39792466301357db595f
Date: Sun, 12 Feb 2023 18:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676225645

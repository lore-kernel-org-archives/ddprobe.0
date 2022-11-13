Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7AA66FD8
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FFF3C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668372654;
	bh=XyMSlCu9A1fYa8FhUgl3sdRgYRi0RyWIBOmSo3JfQkg=;
	h=To:Subject:From:Date:From;
	b=Yo9aTrWoHYRLUJ8Xz4Ok9gXXMekGwTf2J1Bv2Rn8nSHpg4l7s4ZqoPhbh8PHj1b1S
	 94UmloMY21e88qvgyXh9rKZCdnGjmg6r2tuej8WIB4PyNybmhImZyg2YS4CN/J71lx
	 +ROx4u08X/eeQPVf2Ob/8fYCJwJtcntH70vOgHKmXGYCfSpFgdBfWfdIRP/ASwC92+
	 Rlix6l/MXJJIgGo3B12WaJgsFB3Aue1YTRw7U2rJO3fkAuNSWrDLzk6S1bJ1Y92U25
	 0g/ZM74MC6HMjljngXRMXLl5ab9i4fMpLio2ImH911lJ11pF2B87zjs5MPYnvRCX03
	 BD1bWVpzkBApA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53994C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166837265431.31428.15556926570078202764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e62c1aed9f877df2ffaf9f40825e8c9b2bd64af3b71f5dfc6308f9465fe58cbb
Date: Sun, 13 Nov 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668372654

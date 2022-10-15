Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35DF7B
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D377C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665806453;
	bh=GFniKoLonQAGQKTjKEbCYndoVESEFcWyddPS+eZn/wo=;
	h=To:Subject:From:Date:From;
	b=R1+KJScnWAUkvNgH0Vn7g+yhCr+T8wm2tWus4qRhK2srCT+I8UaXTgyGjTYXa2lIh
	 sFOFgVtb3sfAchEyiD3O7IrwLU8cSU64Vr2N1lAuP2R0H8bj9VK1cAcjCMCYDSID52
	 +CAxyweQ4j2pp+rN32liEayqQZtlBk+MQr4bty1h/RW+xhOHLN4N2DvpoRx1N3RN2q
	 Ora+Wb56+/QNsTf4HBgzXwcTQUEeXb68UY8ftCt05SKSrsJ7C11Ihom4Q5syXLWWMu
	 3PJ/DXozVWq0V1VDbhWXp909eDA2H6pR1uXho0Ltg8WuASGPRrVzsSD8kq07g2LmnZ
	 a0xNYrQBfo5rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608F6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166580645335.922.14068041873685191439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7cb560da90ccfe995c906e5ca3a76e77bbef19e73e0a4b31dfe2fbe5073f00
Date: Sat, 15 Oct 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665806453

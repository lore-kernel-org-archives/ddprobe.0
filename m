Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297642115
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 21:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86ECC433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 21:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674423725;
	bh=Kf7NT25KURbpsZJgaygJdcwZhpFMuxit2xdc58LWy+I=;
	h=To:Subject:From:Date:From;
	b=QInhaQU/U2SSXFYIacR+pEekdtK8B0TS0JAarKlN3eLp/ocEqAyNntT7ItadwE9c/
	 palLhkgBM71+zt6imc/UJGXyiRBF1Wy9zL8QShVpeVVjOWeebJ+vqEOBHYdbHBOPFz
	 614kAKIkLH7yZXaMKXZn+nYpcsV1j0L0r6kZBWDPNV+Oqns9X0UnOWTozSkCv4vzd8
	 CpLcz5baUkftTdZMulJJwSzuLJiLVGAs4p2MptQlzuw+Z9tRg/iC/fpPM328cppwIF
	 uLR3N1/pQqBBDh1/LAmo1zRYWWFSy9kfqlhw2tH7XSb6DR3kLJdsK3+ndr0pJqBnIF
	 tgcoBgfTKH8cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3F1C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 21:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167442372577.10458.2704611485075805422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cdf7222072cf6290fe81916446ade96ffe80f99aa5308655f772895c65a974
Date: Sun, 22 Jan 2023 21:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674423725

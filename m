Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6FCE3C30
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A984C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672530087;
	bh=NVHhSdULYJs/JduzFZBYWYqx1ZUS3aUjFg+1dGTTGNk=;
	h=To:Subject:From:Date:From;
	b=tAwu/OrqIG/1N5e5NSVIXqPtEj+VBFVHyUZNdOtwB1ddL3vCMQiMWlvop1FETTXEO
	 hP1TpTH5tDI8mzVTZwCcin9B1Cm0LhHoDNha0Ql3QTK2XBeF/pomhkPIlziB/y1Dhx
	 nawIzL6EjsQqaIISibCLzT24xkwYt6Y64QkjNareypEMj1NLuySGqdRfclB1SJ47lJ
	 J5vebMmaZotyxsaOvTvo174GqPYcjKEeoWp5kRjouqqDibi9TUVFu6iLy8itgMPDo+
	 Ge3cAFApS4ERWMredMPtQsx6b+uxodZylm+jsxnerqm+3CMH01z17vlH0px13TkWDO
	 AkqflGn+UIa5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6967CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167253008742.24923.5758703280655240604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232c3e609e41997fb7eabebb46caa1f4239b97043b4f4a61489b9d3986e25098
Date: Sat, 31 Dec 2022 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672530087

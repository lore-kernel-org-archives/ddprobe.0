Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5439F7E6
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 00:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9BC8C433C8
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 00:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693356848;
	bh=6pIQo+4tODDyKE0XIl4cFx9Gu98VzjPrJRRfVBeq2c0=;
	h=To:Subject:From:Date:From;
	b=dlNY7MN+z2t6Ox5LTqFNJDCx0M2fUleoN+9TMLHqhIDOlOWS4tnCqk3DT3X3EIB27
	 7hjP5+3w1J5Ssq2cYnFYWQwNsPV/I57B7Kt4Jx7SAXdsJAldKZgj9bx89/5jPnadnO
	 0h/pApc5I7AiQLMjLC4i46+4JkSRfXMjhkesDrw6RQf+XJqvOkNpvbO2aCAjcby5BP
	 zfVAD28quELyiJ6tfBHtqE0m5rPlyC82+B0UZb0Bo9bttoMr3KeJyIel5Zyn0CT5q0
	 h/0inNu6OLetyKyiFasaGIkpqbwKICAxQpVoK6i+Msl1kSoItXTlfYpF7+9bPLjMPl
	 uY5i60zv7G4VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84B5C83F12
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 00:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169335684868.20706.2796712728419358967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ea52b4d76ce81b0afcca460d76bddf07ef96574afd93ce869e2fac9700ab43
Date: Wed, 30 Aug 2023 00:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693356848

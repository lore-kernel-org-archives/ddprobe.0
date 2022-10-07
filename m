Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2012ECF
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CF41C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665146453;
	bh=E2arZax4QfwKcyOEBCOEg6kGBt8i4hvwA4aaiiGyVVE=;
	h=To:Subject:From:Date:From;
	b=Yl8t0AVL84XIJwzbMzqqO6niMT5yWER9t8D3YkqTKC3Kua3V4/++qQ+R2b97mxnss
	 KOdGeXKUwdQcCimhBN/A7NO/TxPnnsJTnli0gUc86ytWALDa2K0enkrAfgTWbQTsOo
	 tkuC2s7LH/G3hl/SPvnqW6pg/eRYZoFXb5qV3kR0Kcweq4/JmL0CzEY62HeEtvEirI
	 vTukjUcxIB3xXh9v+9e7DaTd8YTNQt4znShIcbQYJ6U7qHjXVnRNkkN8f7Kw4LOoyN
	 da2n8X7g5JYdL/lQnxJrVgbHRyLQ01BNQbr8lBSe9vDPHERFIY+sg5Tn/a6rT9mDFM
	 z9VyAkqGOwZzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537B6C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166514645333.23567.15896116209986268259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a061852e65279c14fab678d585699aede9edb075dbe9266c8cc1c2d15e1e05b
Date: Fri, 07 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665146453

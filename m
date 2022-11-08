Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD68B28EE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 725A3C433B5
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667874054;
	bh=E2j8uVVYmbv7HncR3FKjSiZulNKF/a2nP69HHD6P03A=;
	h=To:Subject:From:Date:From;
	b=Y8gRxCOsmxLgyVxYh/HLyoN5Iv4UnACWeMcxCZUmvp43pLuod/tGcT2fZZkH+QzOP
	 N5WNetIlKTgK+gEImCwpHUijRO6h0sXIxWPtyLfJJAftQPuN1sgP/SHdB4saWstbHx
	 dxkN/5U75G6I4ETpK6Hpi3fI+Tr+5WzTYCZRi2Xt2fweLIOwhWNIggnX72X9szwFNU
	 QAvJFDn7Y5fL13UkCr7NgOPEkxh5NeOKhR5LDl1X3rmf/VgwWZFqFUglzraUPRPRoc
	 rkNbHka14aYB0xUwgXD7o2goTLedfoIPrab8Lzjv4b9sbrCbva2+Pa/U1oozb9YmLF
	 DCJMwFYvB8neA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F0EC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166787405434.31423.16725757745457706748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3652aed155bbab70f8129497210df9625701c7c83d42bc04ff3dfc997f669d
Date: Tue, 08 Nov 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667874054

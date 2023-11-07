Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7A811C8B
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oz2QAu0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9498FC433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699350496;
	bh=haUg9mvmZFPODGzisI9ZAUKTS7nv7VCtGQi521LKBaA=;
	h=To:Subject:From:Date:From;
	b=Oz2QAu0kXsVPYmkYqoJ+m6EI3Gu76I0LGktCRzuacnUn6DHean2eIhFKBmbYISmJ1
	 vnZDM19IiI42VquOHxxo+GER/7MN1wtCXeiAp1deQTABzJSEwEdZ/KCF2Py8h180IW
	 Gwp202lQwGKinDrnODGCbOpAZ3LDJERMnsghKgf/dC5cYO4G02vd3tHbxHUKibgHvE
	 ceXAJp+WalbMPorsjk6+/opnTRRq2dHpPS4To+jNTiexbPxqbEAZvI6SgGzbik1i1F
	 jSswuPxoYzMLXJhi4vhWqvivaUO6rNQPLa0VlthJ3s7Fs3AsHJHhupXMHgE+TfsWIB
	 XUA6aoDeGhsvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D538C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169935049643.7111.13493757987176248907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8ce994b17a3f5fdeffc96ea42ad3c446c2b15b97c177bb5d5a19021c47c6f4f
Date: Tue, 07 Nov 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699350496

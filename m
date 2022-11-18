Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D7D3D61
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 750E0C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668811254;
	bh=jG7/+9i+F9onJ1fA9rrc85+hUPO3P5zliOy/rr8K4xY=;
	h=To:Subject:From:Date:From;
	b=F9B58tsy7n1gCLmm6KeB312LRLVzB2wrRwi2IRKy89hDLHlED6JG2XX1UJcK9Uwx3
	 uukBG36XJ/XqkF+dkzfcYMIJ2eQ0k+/pCbUO+YnGbBvvsm53Uo5VjGX/Sb3Fd6DtpI
	 DbLKifTvSJujKBgXkKX/MevIag6q8573Q0GxqJ7YdJHIr1IZLrV/n5EizDFX7Yi6qE
	 YezwTrZfLDlLYLXm607c4MoerYwgMmWZ61KqGPXzLQJ4GpqdQQvRkzY7opLWUhLdw5
	 ++aYAnc3aE2s5lXZSbkPJmmnrfkf+B0dWNpLqJ9dWeyLFk3ZM0yYquqgGlcYKwDL9j
	 AkNAtab+QrB/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A1FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166881125433.19573.14074671966820672319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0ca9ca3e9e4159377201b3cd90fdab45ee493d1a07e5119c4d3d87bcc772ac
Date: Fri, 18 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668811254

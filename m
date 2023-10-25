Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394691A289
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfoafmIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5F6C433C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698267496;
	bh=2zbamKkGX1BzTdxDifRpV9qGlo8mGHNN5+lSnJqsSVs=;
	h=To:Subject:From:Date:From;
	b=TfoafmIqdCIxEYnzMVNWdunYIqF0D+Gl7jl7jp9bIvNMMPZf3Wt/GItVGXDQ3A6gO
	 Ht0SMCis6iWWdDearZo71zq8IsxNBOExbEW2HGubdWX0QXiE/eY3HTEatOPOsJQEXF
	 aTYhGLk/fLEtIdqhR5f/cz0PUTHX76UG/jqpHIyi0fNgADNUj8xyHjKk1Xo6owWJrB
	 ld6Pf+O0+yzWyzr3ZXmD7amTKduv4gaiPgZ4lg2fazSP9/gl4TIdugLi1G1o+UmVto
	 KUH/LV1AdN0IVWOSEV2E8oMtDIAmJDmffZcYvE57HjbcUt/bzuYNAbG5DSPkGRm2tX
	 RiV5vgtLC4y9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D47C25B6B
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169826749639.26113.8952197128991299065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494ff4aeaaa143c3b81a06c4aa98a0a3fa4a53783a912187910ca6c134827679
Date: Wed, 25 Oct 2023 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698267496

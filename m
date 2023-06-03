Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E8ED5C98
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 07:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E70E7C433D2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 07:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685777885;
	bh=OxKn+VnhIdCZvflUVCxgrZBW23COVXyRU5QockQUMNU=;
	h=To:Subject:From:Date:From;
	b=WARSRgO12jpDhAT9Hqdvvkxo7m83oMdhwVHAkam+vbALLyiFekfdvNyGI7kZjWhPd
	 J/GbevGjJ+oSoFbs0qqRF1/pmFacC3PxNeVBGo6LrETdCoyDHSAHI9VVVOFsL4QzoG
	 3YjiwxYlpOMgc0yurkvVCJnAscSkbGFL1S5vC04Ln+XesBrtnh0zt4SIbTvzFGMoBG
	 DXtU3ZGjaPmVho2FUnWHt14lDnBlA6Zc/PpTFT03Ae8a0vV26jSkkEQsa8G3zlVWeI
	 R99dp+gCY3oX9voEIGniCYD+el7oqJE1bY7frNgGx/TtbupKa5dFycL/VHPxWQHsmj
	 E+urZ+6S/1TwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1CDC77B7A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 07:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168577788577.32515.15759660808161093005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d5d9e9a5373aaf643b6e02a8b35445ca3f8787b6d8cac689390dbf6f5f750d9
Date: Sat, 03 Jun 2023 07:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685777885

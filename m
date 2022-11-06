Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF23B7F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BBE3C433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667700654;
	bh=vyRV914MzdSRwXoB34G6sbiBH2pllPVtCXccGSWzKxQ=;
	h=To:Subject:From:Date:From;
	b=Y5X4sa+iV87LT+icTUN1rvDhXD4BrFyxJe6VwDcC5MilSJb9nVdY0iVk5gMPgrgf/
	 ZgPMsMls4mvm9JAAiD5D4M938s8QxC3IxHTxVo+JPEkZCuK6CsQRiDeh4FDFJbcA0K
	 P4vOJs4nMAV0r/cr17Z/7ZHtFxB8KU1M28gir+pFnhsbUFnhJMqpcPdOnhWrjtxZQ/
	 ZHY/pxC3Si0TBsN1u3Gd+yiliB+sHkc14Y36TY32222hvQ8BY41qKyNiHsBIm2yUcl
	 nwyZciSvhjxZTB/DmuoyQiNGWpH3OKMo9p4gFG7aagkArtV5KutLpos4gq/5RNfe8k
	 pHpJpS2fe5wzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B2B3C4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166770065435.14589.14519984860948238606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7050f48e9c4cfe522c1d6d83dd08f108d40dd6fbe4688e1f6cbea7b92eea03aa
Date: Sun, 06 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667700654

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619FD16404
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 13:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2113C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 13:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686836348;
	bh=lCE2yFfK8Z/QYJcjKpv9YvzM/7J9ealFjQH2Addj5u4=;
	h=To:Subject:From:Date:From;
	b=hFkVr35ooV48/1raxdHSCHN5BPok4ONDjHj+Cl7HfadpJ36c2Yv5Ggaj2HtvxvWS3
	 TbV2DIoQydvAx9p8Tn9/Ulv65L66rfnD++B9yI3B1yfGjACXExtUQBdWo4szsl09wC
	 c+4Z/YczpcSn3UBpYZsso5DY3p0YmOcuwCD1BkdvW3f3yXGqeyCZonpcfBkZ3+3WPq
	 ZD299Sxawww5WRBr7zEgRZmRl04eqskQgEMc/F9Db97RgYNOC2086v59hnqbT/N6gQ
	 FZpc5Ft0XcDC0w0iz72JT41vbkKYduUQ0AjSwVymHFlJewoJWKZ3mdUkzU/TSlmf0C
	 4QRJLwtqHZSFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB901EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 13:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168683634869.1605.15834468448305778944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bbf7f3d9f6010ef8c6b5a74b942f8e63cfd9205426fa14e4f5c7dda43d0ae8
Date: Thu, 15 Jun 2023 13:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686836348

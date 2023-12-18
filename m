Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69D0200C0
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/e+28rJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76103C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702911496;
	bh=fqRbOKNfaO5JpXL9TQLtiDXVBdZcD07dqow8gA1wov4=;
	h=To:Subject:From:Date:From;
	b=q/e+28rJCU7Sy5sQK2dXRZlSjOI8FRxFEME4fTVU11HlyDnZsdKWIUwdWvKx/Ghi5
	 f99AeCxFwUpl5cpmRXiS5Ej07BNfm5P+aD7BBCLKwfw+mayAXHIUYqr00tfbD/+iWV
	 yUYsjAluqI5PA/AqKCIlzzCWaURxV5ayL7d2OUV5LPTeFwAc6DX6ppzQwSGljQuU4r
	 lE8/nGGxqqkLtgVKBTJc0Bn8ZcQ2TSOnUmZ9FObVdCsf/cUBp0uAh1c2VYlQP+QDL3
	 n2g7S6VjS0xW/ogUUHrJBDQPIe7mNgQfW5b8kGlbcf3GTbiJ/6ZKFQk8Fu66wgltPp
	 OgzWvnPxhd9gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA4DC35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170291149637.27021.9397278017540862410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6739fd2eece0c680672e5d9268d9755eb847de2cf80739c7d626121288e44c76
Date: Mon, 18 Dec 2023 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702911496

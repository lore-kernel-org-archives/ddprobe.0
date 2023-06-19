Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D64D53B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 19:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D105DC433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 19:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687203128;
	bh=xoxjBalJYpHN2KHN0533rXLReiQ15k5kJcSqVfn+H5U=;
	h=To:Subject:From:Date:From;
	b=bOerv8/aOCN4aZX+1aoHrmtunEdQ1LGzqP67yQoZ/OC/yi3DG/dHoWQXO72Yh4ccE
	 nH2ActgUPskLu8N3wMVXKP+MY+hBJ8FtmH5tdB1HZl68fQFZapt24canhIK5C/7kJx
	 sBGb8mJbQOz7MjKdHE6DLibGjMTEZj2dQ/tQzBtXLW2uTRpVfof7yJrme3GCLmb7zo
	 ijRtqmbizfx5YYX6bexmUbX5h8rqR9sX0KKkY14L1NF4OfDZGJZJeNZeJtKVdk/goL
	 lDs58R/UhEQYo5JivwDb707dfYpBeohb4BiQFulUlcbIZApFvmE9KOC837r6PuqifD
	 g+1FnQJIOlFSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BD1EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 19:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168720312869.32362.6508245661485578882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d937c0a2d3fac44b18e0a4e9d9e94ca6049c528e3d9050beac8cd67a62efcfa
Date: Mon, 19 Jun 2023 19:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687203128

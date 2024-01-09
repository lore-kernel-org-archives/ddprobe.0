Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008AB8F49
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPzCl5H4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80369C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704784096;
	bh=APwTyBCigUFEKQGH4wGHDe4MH91ZIlr4ZJe1YCR5OWE=;
	h=To:Subject:From:Date:From;
	b=OPzCl5H4UjFQvKwt1Am/yBMggwsHKmv1MRlYnDiH/QNjr232gsgf3kx5lC5SsBvV8
	 7O/+9GMsbiUrDxpKgXPNC2tnrFIofF9E/GhurhhIIf9eigJD6/F0aLAPqfHB+26yPM
	 y8kjqopFKw/ngVl+X4eLnWcxiDm3nYfelx3hKtVGjqiEmsQnJTPiwYpYldZ7o9/QnY
	 HL1MVErLTK3ACJTYWd0dRrsE4nlIuC1OJ3GbNdVb/y7mPrifzolqGm2Bj3A5maNNz7
	 GtGQBQZiCASvRK+SO5FTPde/ETqn84iIGiyDWyfjBTgTDxIiaARz8AOrHnNuRs+/2v
	 YvssYZ+9dMXrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652EDC46CD2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170478409640.12494.12322989732018618299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e97a6cc2d05fe4f70e1e2d3afce9d86b8eba70b1cf413cce9cb0940714dc05a
Date: Tue, 09 Jan 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704784096

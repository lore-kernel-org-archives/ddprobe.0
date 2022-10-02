Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74DC3D8A
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C095C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664751053;
	bh=sMZN5yDhUjT1yVreB3CiJDN/vc0IlEVHvTRJSFqdYWA=;
	h=To:Subject:From:Date:From;
	b=ghVUC0LepGSdjSxprhOR7Kls86fBNOeVy9oNNBQ31qZWr4FDBFeJR6Oz0z5eKpOKY
	 DDds+8WP9uo4W+5CargVVsNFFA91JyZxj4zLa7Ns4I/AOtiYb9h6zL2SmIexaTlpsU
	 QRaAaNq8ltSvkYjpgG0Y/u4MFAeJeuKzp8DmDwIrybcGdrF+d2cOtbB/+nggQ8hHVa
	 hJWmaMZXWQRUSB0IsBbloRYK+EwAcoZbrDdr1159iu+U2p5GtixgelpgEUYlt+ROXw
	 s7a0GTWjhkf5zrSNgWgOl5o1eZ36nexIA9xRdx42monFTv5ci33oQNI8YNqcHDZbr+
	 Y0OMii6/zZ7gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54BE3C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166475105331.26478.1266110267703242779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3865892ec187e1788bb009797a9edec20fe61a95a29d740aba41c4439faaf984
Date: Sun, 02 Oct 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664751053

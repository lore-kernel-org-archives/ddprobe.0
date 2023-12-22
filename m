Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1652906
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4WPAfRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79536C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703210896;
	bh=iSrYnDXUwDjwXv2DmGq0+Z+mPIYDkqinrhZca1ncwgk=;
	h=To:Subject:From:Date:From;
	b=O4WPAfRCXxJ7/xQWnjSttmIymTs98L6MX5MPAwQGmj6gE77q50pq5xOKhsfOJGSvv
	 QRPbk9MnCtFX4A9Ildi/uU31p0ouRb5EPtQNFyhIqOWy7VwYLIiU5ZkkYGPHO91INv
	 EDvQpx9C5SwUzqBml5wIZ9MKVKiUVj8MI8p+GQ3HC+RKGDosnvwFq5kugLtG282dwu
	 2vL1k27m8f2O+QhSNQtfsr+tohy/1mjkLf17+8R1DjKImwweEBCYL73gfxeWrTHpgn
	 UZ3xKvMV8OShjSPS/kf2MTob1MM0d0sm6pQYKEI5lGQGMNgtxb7VilZNK3K0/j0bKh
	 MiZAB72PLDFBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E10C46CD2
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170321089637.18362.13763882337633328851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5464d034423ba165c2b336547290bf55f4fe256a996ab2d837b375e4fc8088d9
Date: Fri, 22 Dec 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703210896

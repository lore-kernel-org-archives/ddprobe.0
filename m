Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7161C156C5
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 07:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB46C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 07:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694588648;
	bh=2GSlXPEaECj0eeoVssWhv7im3BeneKOmS/d09jYxC0g=;
	h=To:Subject:From:Date:From;
	b=XgbfVYz4duG/eJ4AGU9CoEeVX5lhL+iW0HwwQMxiAKHJv/mZ4cc6rxsK+lPC9km9M
	 O6ZuvgJoNJQ1XF5dhOf+XpLDjSYb8bNCffQ6UQ/WPSW9FtOQBJL4FbDem3nZ5wQRgy
	 KfA7dpnMPXczbuGKFqlAKtbPi3taN6VILIvcZt7rE+mYYM00HAGPppP2FHr/cT4Qr4
	 NW7iXz0oFY459dtvs5e8hYIFNlWwyO1EXCN+OcIGsew6ZYT6p/nM3DwQdu8enfgiI6
	 lywXWtsCRZWXtdeRLkHSDfa+dYVUbPMfYMUF5SiFQJaR57juImZ9o8tp+6UROKg/so
	 MdXnOFsUUzXjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1776CA5500
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 07:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169458864871.28503.4646461352384929364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c07886d97d00cfa9b6e3c97c7a695717aefb943b4307e80286889b0067feee6
Date: Wed, 13 Sep 2023 07:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694588648

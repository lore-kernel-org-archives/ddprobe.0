Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C18481863
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70BCFC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669115454;
	bh=/lvHzG/DgHOYJuRt/Q3mt7t/CMUR7g0MkCG6qJvGRuk=;
	h=To:Subject:From:Date:From;
	b=uqhKp9vwJZiZqXtvuftzUMg2bUIeHpJmd7bhhM5vpQ9y6/gCuNhMt3W83ZCBMKiNl
	 L+hqKvfQVI62T9zz8OPx95FT9hE3ZwWctyzWTMcI2ODBAStZ9UZvwtJS+QUu0jiThy
	 6EPnZ3ejI9W2OS+yo/+Ua5oEDFjgDIjZHSquJycpkQqv6FMyPgZEDlNEcJLV2wNtXR
	 RPJBwa6XNioI7CcAzTtw3zrAVeYZV6acZg2g2n7ex4Hrtn5jCz9Qg6b/Jc4qljWeGY
	 xQDCuJ55UMC/yG4bq4hEIctZXnIz7Hg3KXAcajZFG8zmKFh9AQyD0HU4x8UlDPFCXd
	 6PeZ/V09WK2BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569ABC4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166911545434.6112.9446803477276139571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0d56a3c627b6ecf41c97b3e461c5af73b0d8cf600fdfbb1e7d911c4f8be098
Date: Tue, 22 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669115454

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C72566E
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSpl5U7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B4D4C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702861696;
	bh=3kzx5v6wRAQ5zl2WYJJvhNcDDbxSAn0GoWTOTwtyWQ8=;
	h=To:Subject:From:Date:From;
	b=HSpl5U7/6fp27XxB7Qtx8//X1WVHF7yXwOtYcBM+ifc8kytO5Nvg4P7LV+nUOtrk/
	 cLXLBfMpKPcCBl8220BvjJOcBzyLkBaYVwnLTV2mDhQbjuzGRsFj+LNl/pZ0h7nk1W
	 EYg1cFb+EIhnS+iogtJrf5/VNoJhUtbPp9B5Uiyc2mpNzf2YLMB2znKmI3v8NACymM
	 kRQn9ssk+2jjua+yc365vbL0+WVB/iO4BVtxEBTnyr88439py0QwKOo6YwQ5xA2pM2
	 hU8jUT4gJsU/UdCHeA1j/xczreU+j72oEMa/XTEY9lZEsOIO4V+rQw1gSElSvIOUnd
	 7Mq+WAUR5fo1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6156FC3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170286169636.5405.13563851768038660133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 829dbf804d29151b5a731a4db6009c9d46433f7ea99c2dea7bc1dbd6e59615a8
Date: Mon, 18 Dec 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702861696

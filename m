Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B5510F7
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtZ868mJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C540C433C8
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700019496;
	bh=mtaPlF/dtcQMDWTXpYoSoLNea3nniyfZOzhc46ScRdw=;
	h=To:Subject:From:Date:From;
	b=rtZ868mJk5dyLJPuMy1eWhnKcMHmqNfOh2wY19yk1LejslPFEJO6i+0X40z20YlR2
	 Z6ZYBSNGDs5bQ9QGg7cFNbYRIcebDERY+aUk2g1yd+FLLHjGCcP8TigVjnrhZKqpTh
	 WErSWRjfSiSycBAc7PW8RvShmxhkCe/Gee/mL5mmx5jXnhktgWI+wJ+/Bi3H2cJXoA
	 ocepA+5v2r2xAX01jKkBN8rgN0Lxe38+Nx8sOwMEx6NUu1NMY292/08RsOdNfOuYGs
	 iCGn48DW6XvJCvk+1tPMr8isWKsPARb5/4wFsDd+w4hgm+7V4wde36u4LC+30lHibT
	 O5dH0b8pVsN9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CBB9C07548
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170001949643.19646.11850639048251008504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5490ac604a1a8ed8c03ef9e27b37aeb2bd3db51ab5fb17b7611797a37e4c94
Date: Wed, 15 Nov 2023 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700019496

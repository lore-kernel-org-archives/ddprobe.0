Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295B24C67
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vREetKWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92571C433C7
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698037096;
	bh=CzCdtFNnACD+Wqz1lhXLpohy4Q8zbyUqElFPVYjZb6U=;
	h=To:Subject:From:Date:From;
	b=vREetKWQugoaZHvoH9w4ivSdYOXmtq0le2lEBUtBYB2S6N8PXUk4yM2jXx1kD3VcG
	 h5Ob5NyqON7dbafWxLziszIScb1z87W8BNLiO7O5FNtkTARGGS7sa0RVhmFkCJEZ5w
	 knsNjFD4px5MWXZhhFxs5ez9Ibv6z5xJfOtV/jOpxfl8MJOW07mEnUM0JjEfkEc2PN
	 GxtONxb5ILm2tzy/pvjx7YptR4leezPvqPG427kgZoj4MDiXmAA75d+emZzT6nybtv
	 IYY+Suk9FzZf9zMGzCBumYXPlOGVuGgsBTw7ZBFFKwc6UHLVVmlJiVf8k7oGO9NEGk
	 SDyKAgOGwGJjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EA89C001E0
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169803709644.5992.17262063036673011499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da88cebf475ed9b468330f1f9ad7e5ef3e6cf15033065b39e0f2d9c6b74e893a
Date: Mon, 23 Oct 2023 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698037096

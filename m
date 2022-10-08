Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E69538E
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CAFBC433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665252053;
	bh=y/ur4l6CYplrnnZGycSmoDmsPDfTkuhObeMKta8QScU=;
	h=To:Subject:From:Date:From;
	b=gjPlUDhkO98cKWHliMmq5/cuMIsZmqi55pPbkfBBNA5crQRHog1v1oRhJV0WOMhVk
	 FlYkFnYY0vgHWRiUpTlmFoIWdI8vbkFcYuUn/o8dqHy8EKtKHhHG2fLVnLft6QgXly
	 K744kkVLCg/7efs8NBwwVoUlunA0n9lzd/6x/bD7Qakbd674L2mpn0sDRC3GoAE/rx
	 hUKOvRxMYnXTC/Ib/kVtxlzn0htLTKfv2NJkTIqyU+wd9jYQwDIuv4pgIZcB5nzKef
	 WA2noZ0742DR93Z9hsS+NNDtDRtnL6JtXO1LQ+c4mnJ54r26H1qEoQlQLchHb6NR5n
	 hJbu5X3cvvD8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB95C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166525205334.13233.5326475299466941796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d38e3ce1bd8cf6d1bf8776ff658a80ecf8c5aab90c511614b2f45dac80f0ef2
Date: Sat, 08 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665252053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7027A125CC
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 18:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B85C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 18:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686077525;
	bh=hW9QRxcVLbJPXadp7a/Mpw5epHPzfWk0aSyT+yNSZyg=;
	h=To:Subject:From:Date:From;
	b=Jj417D2BJTmZWCOuIwbZBeBodXEKtlkGFcEq33qlCbNSbqYpE50ki1743+SMnIKUj
	 PmbzRjf7yQJly5xO8DO50vp56qe72EppAOHyURUGzCA62HCUx1lJTeL3d9IwZ1+B1X
	 ykFQwOneRPgs7wpM0bqfMcXI17pt++Jlx6Sxn6EqiK3Wxyvoeh6esMt8/ZXJyKeUkT
	 hQ/Cr05mYeenRe9kzE4H2fO/KZm9fbp4sxHKwhejWZX6ZnOcQM/e/83bIejn9aLSah
	 0iUErSGw5BXinkEKsquSlfJLpX+9Dc8Q5Powf8X7/u3/XbxU0B5AoAbe8lvXpEPd2k
	 QUtLxdyZSwIdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AD7C77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 18:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168607752578.18894.4980955751795428231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a343434a3c292f9d4edd8bd081c008f1b6ca72266aab0c16987ad6bbf0374f32
Date: Tue, 06 Jun 2023 18:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686077525

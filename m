Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B07D2569
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E8EC433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687719188;
	bh=DX8kHSZHFfFXbzLUG4KQiC5B5L3tGD/sXS5vsy6V8sI=;
	h=To:Subject:From:Date:From;
	b=gRpAYRhCskicGINfYLnTJOo+Vxomwi1aSlTJtD64nKfSRGvS41AzQuoAKYpwmdmtl
	 SU8eSjD9v+D8+d8/nqfGAw9noIMCDk8AAoJAP5jDlxX/l4MXxQoVZSrwP2t1m6IIw6
	 2NQpaq1mRLA3GlCxscVsjpVgG6cLgeE8xNqOmXlznlig0/eGrzpbVz+zxIsZI1qJMu
	 b3+13rHj5EFvxhJe7v9TvJkSq7nyEmSjgHxo3ERGvNZUHvBePqdcTAdaqZUdYhzz9I
	 g0mlhNqeiV3CzvqZdQU2h10e4V+WY/IrzqbYiNz+5zZWFB7bbhQKpYwg6SdCnFhhn5
	 esAmXWuB7Nw8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5DA0EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168771918867.8235.10739720257861759737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d9399de94f7a14a96ae5394835657fc5bb077d5f4f2c5b496b3a58fbc6302c
Date: Sun, 25 Jun 2023 18:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687719188

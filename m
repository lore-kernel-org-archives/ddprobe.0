Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45AD7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 688A0C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662859253;
	bh=j+0aQKWiCHPyVQWdPAvyYOoObTPcaeLwDF3nLL+/B6k=;
	h=To:Subject:From:Date:From;
	b=XyZqC7RPEE2Ep0s/hO7zp9VRG+avqr9Bwx9RT/Py4DpWsaqL7iaiB1x01tULrr0C8
	 AL4E+sVN+KVlhAEbDFLoi7uCN3/n3w+lzxq3HGnIMvvZiQVPqN+8VxnOV1YfMCXXw9
	 DEpTNKMf2HAgqpEg7I/ypjNrtKYGRc6gd+pVb8RE4kYQZPQG8E2Mp7HBe3OpUjkh3P
	 XqErB3mhkJ1NiKDHNYWq2iKejsqSH4S4SE5yfL6fYTX7musF3XlzRpGOBHfM14bKE/
	 45mg22IqpvwpKF1O9rRa/jAoAABeNEbRR2AGI+5/X+xGih2E0WK+K1JJ6eY6fPKKzX
	 SgJlAJECO130w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5418DECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166285925333.2851.12353669457136371719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af1584e8ac5c58b6ba4260e7fd3729c22f47b23ba2c184f8ff1b45c0ee1eb7d
Date: Sun, 11 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662859253

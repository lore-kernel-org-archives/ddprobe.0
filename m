Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96A17C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75233C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663461653;
	bh=eMvs1dzR4cfC+85hCA3W4J0zEqe1n6JlHQ20ZMd0Mfo=;
	h=To:Subject:From:Date:From;
	b=jYUqIgaPbjlVoqADxfnhhnnpngLM95AaudvUuQ+zsG9qfkneO/KZmHRynAepT07Uq
	 fTbXHH1f/+2gMoZxifVpi+9VE+70mrD7OmzL0k8R+vA1lWRBQEqhDwet5XDVJQoMDC
	 43OIqXMdhUx9SZVaw0EziKHHIQYvkGQiZGKqaQq4/1kfZDUesLZPvo5MYfvysQDnJD
	 ubtxDZ2YCcCtp95PWyl8NbmWuVPzKn+OsU4dvaM40kHQzMHOuZC6jsviiedykOBaF8
	 Y8WvPxWW3X1s2FWXhGYGmdNifO/F9QmnzqxOX7gyLyl+jX4Y69tjsvElcEKuNn9+sM
	 o2ve9fNG6MFuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51AF3ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166346165331.24109.8865538874390826171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb278a873cf8bcdbea36dc0e9df6806f234eac38551f0dbe7dde1ac575e8af1
Date: Sun, 18 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663461653

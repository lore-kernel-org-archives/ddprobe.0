Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5C320F6
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83557C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673690487;
	bh=PD/DKfVaIdfcx6ZNNh8VuPsafFtiDpLdcyvS6GZ5AHE=;
	h=To:Subject:From:Date:From;
	b=a985j8Nw6GRJ6CyWDW1/vPpx8jWmAxS1NwflZQPbw522Q38X1X0s5ckuxiJWfd7L0
	 OGzZvJBz0uUKQp7aCTDpvvrd5ELN1rHaCosxjbSEtjUrb5DGPJcFTdNuKaG75yJHfS
	 vMjpx1GsRVxaAUgCaQy26SPibjQHIy8r9+plqqY3MkCNX8wuvCQs3SjUYth48r7o4q
	 heB58acne6DH7d+HMClNEELWpYoW8p2ktJLnFTWy4ZpxdXb2kdeC50D/XA4wNCyfmA
	 tsT1Js1+eNpq+8oLLKoPcfWHKah0Kri2yGku59P0OZqnkjq2VhhxImMqz6zlG5lIbR
	 Ajxe+0SfevyyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 668C9C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167369048738.7613.8477262480994657746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c1bd327a3ae906924853a45adf04df763d2ca3c3f428c3baaafbed399cdaeb
Date: Sat, 14 Jan 2023 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673690487

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314E62C181
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9v2BtAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A08BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699982896;
	bh=j1QPMv06ObkdKAcSqrewSRagS/JE9TfC6E9WsFhvw9E=;
	h=To:Subject:From:Date:From;
	b=n9v2BtArjlgZs2T453AvtNq7ZGbfRYqGI5sKLfjbrmjR7zHgpojNsYltYyysqtU6M
	 JZ7lhcU3NOVyG2kBzKXX7UhqrKyBvP0U10L7DCkvI1sJiBUd+VGtWMl38RpN1PHvZO
	 vGk1jaUMTe7B0sqNafN2vqn3/OAdNceqn920MV9gMONxYZNp8wPGLqsGyTGFMQ9De3
	 I6I0vH99Z2L4kHlItyl54zVY09gVqD5uqiePGJL/T8mJ2ixKXWUsmJpMKJN9rFJPnx
	 BlpXjihBWO36/v5lNfB01xQrDD1d6iNZuNtReD8HUV2rXzeUEPvThhJQbxVhDgCjTo
	 wUIm8/aarGBgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A57DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169998289649.16601.11314171742256143038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f31c742fb8f6161462b16eaf30eb4ac332ca76b2fb5e350fec357fac97ac23
Date: Tue, 14 Nov 2023 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699982896

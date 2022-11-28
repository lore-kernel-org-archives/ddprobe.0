Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8BCF8F6C
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B12AC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669654854;
	bh=iD5ngO8FN4EJPQLrM0DRLjM+Tj0xFmDJkXqJaBNb0kE=;
	h=To:Subject:From:Date:From;
	b=aH5gP5UhjnbsKuUhp8rYsRnDDYQVUWUIVUlZqomsl8M1sJijE2OtZ4GDZeyD59Ydq
	 xwu16mAlbdiLEsXbDUXW+w9jILaaNfQOd2kZJ6d8YicF4tGG6Ly9Wv53MNSeJEzKQl
	 zLSksG4EiT7jbpU9+txJRUQkTePTCnjFI2zrzSwzCWb8znFoTfRZf/dKEeBeZg/7k5
	 R0HkWJPaTwlj73d6tdjEYsL0lkNr773Ol5sId+HvJ+7Ed3XsHOcVgQk4uyKnTNGP8Y
	 E+lgIrr2EQgmlw66m3YY+91xyzThN3Du4AmvX8CtS1WKS+iw1Ql5UBuG32xRd8AkhR
	 71x/UmvQEyRVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52BD8C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166965485432.13946.12942215862410104333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc8c03300318a71667f383fa9f6945c55524dfcf20313ad6abf6a259194421e
Date: Mon, 28 Nov 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669654854

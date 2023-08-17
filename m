Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B89168B3
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 20:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05ADC433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 20:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692304388;
	bh=zpR5DoHarXNBeZYxczd3uuu6uQ5WeiH4znyuKeuTKvQ=;
	h=To:Subject:From:Date:From;
	b=LJUb0LlRtLC2x9dP5ZSkptJ1ibG39pwTTVaeAsth8X3S0wzMKzDViy61XuQhfPZf5
	 Wylx0Wox4+K7NJnc+rsBKpsxwH2a1viGw/e1cw0laesf+vCL/li1oSep3oxvSis6CO
	 xMdX8gORzDWaPm4edKAAUugMH6jLd4m3A/2ZlJTaIgSCJ+Q0gEhYSfGFI926MFgsY7
	 ULb9LKYPIwUUGtEbcrTzE5THqXay9aMM38yq6s87w/rNCpDvjv0Egk9EssFlXeYYVa
	 lEjiet4nVjPGHcRz1oajmQ8siAf8RlXGp3EddRD0bUZNkzfEUdg7HlBTgq7DzEN2bC
	 eO+/X/ycW6YCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EADC64E96
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 20:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169230438872.6557.10055898678190727111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ce9e1eac10cdccc365e86c0e77b16c15687834a62899f1fda38f40c4f3338a
Date: Thu, 17 Aug 2023 20:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692304388

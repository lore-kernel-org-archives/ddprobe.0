Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE8F635
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68D91C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661915453;
	bh=Kg9fW7I59guNS8spmqVkvo3vqvSg0qmCJ7JjO5OSqNI=;
	h=To:Subject:From:Date:From;
	b=XiceR2b4mLWxkSQwx8O2YVXeTpEZwAdFzuUnm+1fISV9CBmzvQ2e5hUARrjEsg8F5
	 1AXgNsU4w5kzCizpf9IAFrICWd4t2wF6FL9LfTDDK8x/dorVaSZaNJKZYypYMFBtMI
	 2b7ER5s+NS10MnduVcM8Vb/qCsmDhnCk4l8UMZ9zV/HaUMVXuEwaae8IGpbjBAuHKc
	 sNaEy6y9xBg7sbk8RRRnkZ5R1zriwvzYiHkViNBAhI0tSnq2cayj9w4a5Qz22SzsfX
	 OKaJvImxGGoaGVeHQ05Uho4z9UZYO9Lzvzab+uFyG0/tNJXbUXhOUN1xICzAXCfakk
	 saWvW6nh0wE7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F6BECAAA1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166191545333.6553.16240930043223869152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7312450f748524159911256ae7d7c6d526aabf6fc758fa15b6b85ccd9ffcc0
Date: Wed, 31 Aug 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661915453

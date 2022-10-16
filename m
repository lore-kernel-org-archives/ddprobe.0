Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67D37F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 678F2C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665940853;
	bh=XvxrLQgupMvGgJXB5ok78zBTOdWaVI8vg/h5G8OZd+c=;
	h=To:Subject:From:Date:From;
	b=K+Wl64DA2za6Sx9kJh4HCvxx5rtWUiOqnOEWGh9iTqieZ1Lf6oZ4mJHL1lc6WK29f
	 nHDYPmnuE8YWuJZtagelrGRJ2yIYguDPXDHbNSfE0JifpRb2vKpf+0iZR3Lz015AMy
	 2Sm5bUvjXcgxs5t1mlppX7wdO6Gus8xBoLUuPVY6nGqrF8GDxCDV98WxvSiWP8P41E
	 Aj/TUAs10xPvmxjfFWmSx0SZK2alOFL92RTdYVhnjjG3kZvNepXZoUWsZIuYUod0aj
	 N352k1LWay4Gzh6GUi7whpWpAsbQpGs8JWR0RjPDS6dj4N/6xKlw436Eap8Lv5FvK8
	 SiBIyc1ezTo7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524C7C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166594085332.23153.13683208332269432967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5d1259a2c4c137e954e208317d464555c849f1d48baec484a8768bae8ab840
Date: Sun, 16 Oct 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665940853

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0A4AC140
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQKCySE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 873F0C433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704064096;
	bh=54qXibGBobPDknHfhDS6Nu7KHWvf72hIIenQSEWkYSE=;
	h=To:Subject:From:Date:From;
	b=KQKCySE9QOOtnoldlHLmmx+C2m3CTlQdeNBjr29xDn3cF+ABm8HCZPid/1YsAE2yt
	 ahf2nZoYZpP8z2wPFT5mJfS9cxV4h2ZiKPc8S6F9wHnh/e4Hb+v6UM25XexziDhrJU
	 fZ3UqbrmUjgzua0cuLIHARfCQ1WkuSQX16mmh5BVviB8lF8/z1hSfIY9N5vVCMI/Ha
	 844gcUottEqZ1nZxAasoIZmbz3TaI+iZRa8T+W0OMAUk0HVlrUicCjUgQa+QK3dtgQ
	 JT9+ff/EM5E+H5jnh/ARYSq1FDlJb2IjdlsJxORyuGi9E9Z4ReN5K6VPRMuxO+h5hw
	 2qMjxJPVn3u1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ED98C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170406409638.12122.12922533492300044548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e55b5bd6e59a6b4706212ac740ec23b07f96ebaad1b874e670988c7d16fc212
Date: Sun, 31 Dec 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704064096

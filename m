Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50565389
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 04:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3600C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 04:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679717466;
	bh=RMF94NlPwSPq1DKuHC/3PqB1BUNWeeMZEzjjVMCbmkE=;
	h=To:Subject:From:Date:From;
	b=fsVLdZwAIOCnkZ9LgD7MndRtyN6aVy4WNGjTt7O85w2c+dIH7nnljpIvLgzr+X7Pl
	 7TSPXzDreQ0ZatRtDImNpK7ZATeUTgY/0MAfmAfIiLxIoCl8FLQG5/vz08dzR8tkk3
	 0qemuBQsLUexGlUYiTLYrc7nmhXgukmK3Qy0NysEPIgfZkbPPpDFkuXSP1rRxtbfOi
	 ZlZGCp6ZLnjZs8d+j3dvU1LQI2x+fKNMokFQoviTvUuCkQrO+P3cZEdHBMPW5FgvO7
	 K/HuicOW3v6s09BlBnBzcgqeCpIzP8z3Ululn4qSJGYTat+75QjW8B+4ycv72yzc4r
	 Bzv6WMrcdCDrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF262C6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 04:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167971746575.2021.7061107528018743638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab04155295073fce5c1fa7ebea40bf6cd3096ec889ec1c1f345edb3960bd0d1
Date: Sat, 25 Mar 2023 04:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679717465

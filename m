Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA26D290B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80CA2C433F0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673909487;
	bh=zfvEb25c+ylPF6VjIQlR/wvXgGY4ACP1ZlfsTL/uyNM=;
	h=To:Subject:From:Date:From;
	b=aCxE6EFM2z4Mlx0atOrIVjBsaLfhAlDVCvONSBnpMGuyafjZeCSgKY3XLLexH+n6W
	 zdw+cc0+ap339zA+7OgKVoUy4WMFnEi1x0RHKAmXIGKBtX/p6U/CmGjXOlTv2HMI1r
	 RGOJLrGWv39Ew/o1qEhl17c80vNQXZjGZ48+kXutjKqv0BjC0Mxi6IQG0k+NYwWmTW
	 W5rVVu4emsU5Pe+pBmb2kfizh/mJ5LPUdgPhG0tyQIGdEhoZ7A06XxkbZlkjhLsQ4X
	 2HBrywPaGrb32WcGQKPwO1JyZj7Uv6o4G7zY789lKeX5d3WTZ4tqJ4+pbSFPcDfdwi
	 11yv4aGy+0IDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6142AC678D4
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167390948738.25420.817083003198742891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847664498a51494df676c3eb0e097118a7341507bae16712bd7c8a504e44379d
Date: Mon, 16 Jan 2023 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673909487

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9CA7E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 00:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA2FC433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 00:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690850528;
	bh=1KWHlsS+GG5ygPqgvvVXx/a3GPsVBl4wWMMJM5N7Qaw=;
	h=To:Subject:From:Date:From;
	b=ghMfmYm+TkDZbc4KkBm3r70xnDHDmvQ2xR7BODotNH0RplYLUrkvG4/E2AybUSt9U
	 mbyUcO15xPxLq/SLxTzK7coASHFcR1w1OfoHEc7nQGws/Vzhg5vTktPxvekJXY5A1+
	 cT4xvGwASlnwRZk0R6xlgoGQpjWufOCmwGjLmQ3SbtR00KHoCuGUePbtLSXKKOXhJl
	 R9kcQIrMVnvbNWpvjb0XSpqoKcBYXqgjN6CTHYwlNGg1DhnN+7GvZNrZnQGBPb+/4C
	 FNnooma4VqNV1hMiwhZMDHrviiGUoTDrJ9DgzeoBg5RrUceO1LiFM1ZVWMhryuG6Fe
	 HJ+JKbvYv16MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF317C001DE
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 00:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169085052870.20449.13551893043593545269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69b74ef155f6593bc089ebb5bb77bb7b891c54dc6914214dc537721bd020672
Date: Tue, 01 Aug 2023 00:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690850528

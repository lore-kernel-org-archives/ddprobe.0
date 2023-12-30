Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B47823A0
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkU/q7Te"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E73DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703921896;
	bh=5LqYo8Wfi+XBxDTegabEJpmCV1aFSfYNkR47tFUD4+s=;
	h=To:Subject:From:Date:From;
	b=DkU/q7Te99N/29aB/R4EPF778ZYNU0/XYQt0uARb41BbQK2whB6zmJrDjpUsnaS5p
	 ZXNU7UXFMKusOk0l5Lh5ZbJbZxs8sEiZZkpmsKfPUZmePg0eZgEgIJBMTVR0wQ0DNk
	 W9rmQyHN7O7Flt9DyPZjttFNpA/xiQzt+LjCVC/AsRc1QNJ1eJRfyD6w5Il7pQhBnJ
	 C+thPqI9lrMWACAQvEbWO/Ut1tAxKCrhL1Nx+2EmxMXb/LhaiAF6H9qw7Lq4ILexpV
	 rcsaKJ2eU6ZZyYIzw8eziDvtQUurjxvAFcQ5IZAvnnJ5lju8uNEDj9FiZbWfJrTc/0
	 mDF8S6idr0PEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD34C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170392189639.6561.154937098361140591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020ecc49782898eb6b190b5a0843f2ab1a5f39a086f967e4423d2996519612cb
Date: Sat, 30 Dec 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703921896

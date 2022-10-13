Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04532CA4
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EACBC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665661853;
	bh=YREzENrjTVXeQADDzJXAk1IpxRSX3Tye5mj3ZjcuSQc=;
	h=To:Subject:From:Date:From;
	b=iQjM1SshMYQUKhZJO5WfXgRIqZvVay4rEvs05ZMtaXu4behJWF9KLdJhcZ95jKrsm
	 qp7R1Id67Cg6duCdfVAzfHDz+XUz5tHtjwR2ECPlWZjNCh1nXWilRxOeMA3YI73T8v
	 Rh2888RYxbQfh8Eni5dwUmDsgtrpHAxQiAh2LB8qy1K3wkGV2SMuU7H1+qIE+qBtos
	 a+Qh/7Ct8xZn2O5pIFFOii0Z7nZd+mm5YGDfOPJhLZdsQzL0CuYUCEOiV/A591k+Xd
	 /k0JjMn7hFJlRrGLsWuuANTJdr0/hUxr+XPUKwp6bp69tsrIHbaT7JmoFIOMNhO7Vx
	 YBIz9c82GM0lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51398C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166566185332.4925.9583817485988657018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb25860884e44cc42cff21ba8c50aca2b8dfd4b607675f8d99e6137c48033ee9
Date: Thu, 13 Oct 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665661853

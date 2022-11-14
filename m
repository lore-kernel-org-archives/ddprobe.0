Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C544D8469
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79227C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668452454;
	bh=6UiPfi0IXPzo9QEAxBacXPhCWfkYf0g1zhLy3lQExZE=;
	h=To:Subject:From:Date:From;
	b=uAH76QAJXHf8NXZ5cpjUVFMGMqMAjfNbjN3JzrvfGOWvbXNAcKESrtOYaGSLJBJpf
	 lgcy22T9fZfi9Ok3k+VKh+UjHh6HabjU7+euuLDKngPk98cSwojl+t7cHJ9CYA3B05
	 JgpXbB7wJ8k7aXvyx3XcO25X6pw6D0XyHko3A2LbM7+V11p4dbJXaZCzwM4BI7zQT5
	 cvr5bYDeJsNeOzLQX0JIvYz81k0mwQ9dO9M0koQmXnimyz3FshTyZmVnqBDwfIpLyy
	 vd+QbPSRbHwpYKM7MBgi8zbiMUtYFr1AQFu9MFQrff971SyeVmZp3qu0ZwgKcd+Ord
	 40HqJ6VP7bffg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D48DC433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166845245437.10265.15971452598760029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5e0fd5bddee4777f9f50c6ecf3e5055a8d0ef2ea87eb966d0cecd2670528f9
Date: Mon, 14 Nov 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668452454

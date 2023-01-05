Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87EBD52B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B494C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672934487;
	bh=D4JDr5ZjhA1AF8heJPWSScN1HpPzk96j/PrdL8p4tVw=;
	h=To:Subject:From:Date:From;
	b=eClKO74RFjGPxTUHHpA2B3mE415ng1pkdMgkFscA4kEwO/z5e4WGen17wQeW2ZD77
	 FawFWhL5yZ/L3lPNbD0lK+Mut8U20do+ZISac3ZegdPYGLWRbUu9q69MtG+lDWmcnq
	 AKXSNCfSiICamOWMdHHLex7IfZIvqNnwts2qanXyubgR6T75JkplEPwFhA0hovKjx2
	 gnXyYVSkUp+mQJrc6GFzUMBaTVAaTSfCbJpvdWZHKwALfDjpcHh1Mo4WTZTklc/B00
	 kcf4QyRQ913moVD1cDiAcl+YDmddZq8642gV5cIFF48iB6wMcge1QjaDgfoZYQfQIa
	 bJm+ewvUgXZKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71669C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167293448745.11533.7366969161871244433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336fcfe17b5eb181851186acbd0f7376c33817bc3b37756de40448aebf030fdc
Date: Thu, 05 Jan 2023 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672934487

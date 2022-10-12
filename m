Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3DBC17CD
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C982C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665577253;
	bh=yhf6PJlb84X73Gwroba8+33eBEYi9MhKJNDN3TJccZE=;
	h=To:Subject:From:Date:From;
	b=tfjXJLFyV7vP+V7IKKRlmBJvnp59nEGB2t6fElR0JBr7JrNjehhpNBHXYXF9zxbfG
	 yuYHg8f5El7Vr074h1wA7dD7VCjjXQ33Xdbf2iCSlbVrm/an9VVKI8PH2QF22MUwKh
	 yXQLG0GVomHe0Bw3L7/a1NyKZRNrySPiOrzLhe7gP8UZ58BgddhyiskiEOE6KZLhzT
	 ie5ldBUwN7EI8ugWXBkNTruEbBiWgk4ZpJOS04ugfp3M3jq1yl9qcVJ6DJByG3rlfd
	 5QWUWmHa60VThm+oCc4WuFtCQ3y+bZ1Ba0f8M1dVYItwJNU+Jd3v8c2PPXOG7IJJZZ
	 2xktMYAsLRGZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F47EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166557725331.25401.5176899928382995685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee99b26a5fa19c4a396947d1173a5880a2f14d730bd771a323ad8708297021c2
Date: Wed, 12 Oct 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665577253

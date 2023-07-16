Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF05187D
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 06:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C04C433C7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 06:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689487868;
	bh=ZBVb6Tkhs6c09YseUqNup3czKMNaUFb3V5M5wLqBPb4=;
	h=To:Subject:From:Date:From;
	b=BbUTTdbhkQDGojeBrUBT1lc9UGIPN8y0Hl+EABJby1thQqzqOiNMNq05ygxXPS9c6
	 WM6a/f5fLiXvTlsVs+lWM39P1Gy27L/CQ5+ufPyI3Q+1GeK5+mPvhK6RbcvVVGZWgi
	 a4cks06KntTnVCQotgmA6Ywj0gcvz3qIMSXjTlrF/5nEYjzD+K8RGOh2WqkH2Cteof
	 SF8SffM0cR/VH+KouDDkE4M91LUmxhrlePVuWUWqwyBVn6H7vmmWcC8VZ1YOX0GVK6
	 OAMTuMoKL7o+k8tGvJtzgIk4uU0O/cSwBqxJ6K6Hg/y8O9hvvqnVZg4hZgCfO5rtOX
	 b80hRi+kjpMHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B491BEB64DA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 06:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168948786872.32424.14402798383382839970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd2d89541c8ae5e84bad9fcc3637ddfdd236e1c80ef9ce6b0c302dbef60834b
Date: Sun, 16 Jul 2023 06:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689487868

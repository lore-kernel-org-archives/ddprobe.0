Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5550107B4
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 21:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 24ACFC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 21:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686520386;
	bh=q5tMMqw8D10H3AaBZsHBB86r7hO5mz9ARfisyeeO8YU=;
	h=To:Subject:From:Date:From;
	b=XRU5ifV5LLWHa5cZ9fsMwgDgtDfu+4C0yUIwKe4wctokxerp5P5fth0+hdn3Mni7u
	 iET0HaqylJ0rjZydIhgOZNlqsmwzxbAklf92q+b5psLJYjvvwa/WLCMxvkxg25r1WE
	 unv3gR7fR85aQEvp182NvH6IpnqKMUGUz3U7ZjbinlHpqYEq632eno3q5tPmz65y7z
	 QfUsLE8DXabXtmpbRD8sh6NSof1Ub+EKcWJ3sScuU25IGQSC9v73vXQmKBJWcQZxcT
	 W3u+ms0LGeMXOmGvtTLebkJK+/Gb+R2DfRz27ZiP7deETnGPTpQ3xallNKYZegw1+P
	 PUZfopTZSOISQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC4B2C7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 21:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168652038582.15697.5363276057428968468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3f9dd2e7e48de4ce93fb57b90c8f4b46082c0679fffb41d2d295d7e5007503
Date: Sun, 11 Jun 2023 21:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686520385

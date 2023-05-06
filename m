Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3699E15B9
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 07:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19D1C433EF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 07:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683356885;
	bh=pUzUxGUenqeAOFS5EW7kCgjG3/LB56OMDhTrcykLsgI=;
	h=To:Subject:From:Date:From;
	b=sMNhsmgkG3T/mnw+NMhFufp8BuQkNn13h/y/jMfLPqr8Po/HdZt6zWHKiW7mu86QM
	 Opd433p0x2d1GZ5ZVaYAjAzTGNo5l89prT5oLFO6pDbpkIeTZtXvtDfHutHPbXuVxv
	 +TUflHjozpf8wOuWl7HwewHJzfxHWK1uirzsqruqWOJ5gU5Jc2m6fYTsR2DPfbcDxh
	 1xBqIArRwA5nN46sF+xIKAJs2c7mQXW7/OtS5Savn0ItbTX9hbrZxGg1YtwzqPzEAL
	 7hIDh8abW1AUJ9X6y3c95TB+YI6r/2XpgoHDbZfzJPcTFZ8b4KRuelXGav4VZW2klR
	 /wVTV+aclyYwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3A0C77B7F
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 07:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168335688574.32398.11415462653672917051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b632fe80d9f054e8b5d280708d3570bc6fae2d2a9a746f19e624dc1092081e1
Date: Sat, 06 May 2023 07:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683356885

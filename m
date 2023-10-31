Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CE210A30
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+rCce4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F3C0C433C7
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698739096;
	bh=ZjfRlzKxoo6fyJFxZeB5FcOPBzGABcilGWVk7OPgkcg=;
	h=To:Subject:From:Date:From;
	b=W+rCce4APTCHqOO8TJi253Zf1/TvuDKaXWDrMyWo4Kn/ktZajejz8m1R4QIHqPwIo
	 mEvNxsDHi+h6hjPXzfs7xMqD8jOJLMQcKJ3IzLFUHrdfsevNImIyXG6QkAeViGZA9B
	 O3IsiqBKK5e8HHOYtZEF73Uhx4kZpyv/LlxWpuVrDfchhjDvkEWpnwjgIFo+DDQGsz
	 r7dpNvnT1HxafUwd4p3gEGyNlCy+8fsexx97eiHpHrBPBpyJtU1YG31Z251ZBgU72o
	 RQj7AF2BpbotpDFJJboo1SDEcM2NAqD29BEeXOb6KMIwPH4yaGuCLZllU2ZLQchyGF
	 W7J5N4iiVRolQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EDE4C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169873909644.5319.16709152128177053488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0994728fac2675db2ea812c9f9b9ded8cc09a6fb666a8092a7d22d48eee4dc
Date: Tue, 31 Oct 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698739096

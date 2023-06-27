Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2A613064
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 17:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDADDC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 17:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687886588;
	bh=IJ6UT6LDJ5Y1zbcYPvbq1FygxkjqIIc83bbKmLEEiyU=;
	h=To:Subject:From:Date:From;
	b=TaaaskMVK8+DEttaLVpT6tuT5ArTq8+V7Yo1llhnnCjTtqi8Bs3xNX5Wp48s81dcr
	 XpXGqwgmw2DoW07rEFo83uNxaAvzcM85gNI88o2GShpWilUPj7d86QT+Ap5hsQ6Wdb
	 kI4IiyAv9L+5Hh5M+ZF0YOju09wp4MDHFI99hZ/R5i+cCruqDBGLgkL+k5qPjeflW3
	 4b5hUMOvPE6V9JMnQ63UvCO7UtNqJckfsCHTZjMPsW/7a7hE77ygDluwlSSWwyvQ9f
	 xBbH2KnQjXwq7XpH+sHPkmTIoQUfq7mYm1/WmnsLoA82GtLBXnE7wNkjV0XrzJrkD3
	 T6xRLvkQdZKhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB1E7EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 17:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168788658875.15125.15973743330455019240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f08a3da0390350083d6b2c1939b9ea456b30827757cc80a834c5f3b37b4e4f
Date: Tue, 27 Jun 2023 17:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687886588

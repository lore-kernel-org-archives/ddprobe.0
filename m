Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515A71868
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 20:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E251AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 20:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681589645;
	bh=IikCFB6Wu2VEFVTpd92LQW8XS9Ep/D/pKR8sdIZRBiI=;
	h=To:Subject:From:Date:From;
	b=Kx4ugsAn0AOSHIELS61PDawYc0iKE+c8wys9fpW3aAdSqONup7A4F9gPRx8IfNoMK
	 5CE7NDZ+iDx8mdwDudySWXTWC7FMsY0WtcfOYM6vo/xDxTvjg/uLteaBIpEKSBwXDQ
	 /SXw1NE8woYQqWDzJRIAnKyc0cDnebCALg6cKNMXJHq3tZEcnoSydACH2aagBD6iwl
	 hhOwgzXkQ1ukfFj92ELw4ioYoX7h8y5YuepiHCN6OXrB9SYTpf8+EpUFGApD0AZ5bz
	 kbvX3FZkHl1jOLF0KBU79Zr4XHg5QTBcrvpd/F+qYAYhk5z0AtWSEunxk2pkPGPacp
	 xiNqE9YgAX4wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C433FC77B70
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 20:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168158964579.22027.1497566336315031809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58293e5c79a186500bfc68af565e979adb27578bf953b7750c99c26d2998858c
Date: Sat, 15 Apr 2023 20:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681589645

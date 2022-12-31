Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EA115B6
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0891C433F0
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672462887;
	bh=E+X0NFep4OxPE057d89t32m+XXBjLViqiweKuMEURV8=;
	h=To:Subject:From:Date:From;
	b=S3XRPbPd6tQdlZKwBgXRioYk+T2mViIAvbCdE2w8MPFZyCVEVh4q0SVIq3DKJX5eX
	 JkXJEbX4w/MaX1d6YdcxYlVIoYbEQeF9FHXnx2I1Qq8AlefA4wP0niLWcsCzTIJ8nt
	 2WAWq5AmdM30EPu+p6r0TF+K+yg0Nt9xpvE/lt24Fn8XkQIjYPTh8cAJ6JCEJ1p5wd
	 2SsAIM2W84O4Cp4HERPIOub7iXlY1xEenj7ec74d9wNbmSTHaq7EBlLsCmLv4RnSrT
	 7edrci2Jw4L5N5NrkYp/GqUZaA8C1LtYcwtr1mYhqLnjTKyk6+pEkwTOB0+5pef3F9
	 oW5fZ0NVsGfwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8144AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167246288751.2601.13721256802065914421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dbe68ae9607a61ba8494bad55716165fd45e78886570bea190adb209adf4dd8
Date: Sat, 31 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672462887

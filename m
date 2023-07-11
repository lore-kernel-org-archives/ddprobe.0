Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E44437D
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 01:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7057C433CA
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 01:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689038228;
	bh=1WiuvcBtN76YiBcL5TkwPJkIGyx8F1HSgpbIKmZ3q8Y=;
	h=To:Subject:From:Date:From;
	b=qOKeE9Sv/Anzeg36OYcsjZ5Jjq594VLvPvEj/AQijhNq9g4B4MAiWnavGAyG5skoK
	 jeLeI2sdjFTBWZKpeJ0imYl+VyxqKUqBZ5wOicDvuN/O1fuvLuWeEnaenD9ukQszL/
	 3rD85R3E1nT6O/mrNMjGHgt3aeXrAbp+V3X0XrC5WKXZF2+QO12njkGUggTaHDXP6Q
	 jbkF1yQXPQAvCOJ/SNVpqP/XkQ72EkIPmP+Mm0r0HvSInePdcdVe/CNVNnf5cBSlEH
	 iKR6rIWO30b6o2nKu5oeTmVLKJRUrVcnP2t0E+m+d9GeueJpNNWjTXKLk5ClNP3Gai
	 J9gZplVpCcMaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8689EB64DA
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 01:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168903822868.15947.16184225320281986335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67363d322d75339b8531f01aa27b84075f5990389f84a288cbeb85b1e8604440
Date: Tue, 11 Jul 2023 01:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689038228

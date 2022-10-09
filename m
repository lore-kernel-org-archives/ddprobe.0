Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C141833D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75E21C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665324653;
	bh=CL1DY9RGWnA6+TiTU7FOlZHv56XpKDJS0R9CjEGW+7c=;
	h=To:Subject:From:Date:From;
	b=tVijEYA5kSCZu9whNOj2Plmk4h5kXwRK0dAvOFrhU4wyVBXomQOdr7IsREqMnBx5e
	 PkZ/PlrcWeA1egw8joRmM3SojSgJ/VJuPknaehzIvjPu56TzmXJRERjVpK31Zyryjc
	 6Kypa6zblbLA05QL8bZXqd9xgiiDvZAmP+L6ak+Mg0b7PdJuWOClNkQA//BiE9GZKQ
	 Llf91PyLp3H9yi/2A3UWy38+FRuzaJACh9GYu7RORZJgNX7QGvQvdA9IU6AAnMJVRa
	 l9qxCH/QieqBgQfm2pZBGR2fs1KStE9xaOygXC+NRup2Dodm8/Vbry/hBzq9YK+TS5
	 YEcWBlajKg+dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57596C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166532465333.27478.12632538334835482613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b2d5408a80d49e3b3e2c222dd682f75400b2bd8815153052577a0131ecde29
Date: Sun, 09 Oct 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665324653

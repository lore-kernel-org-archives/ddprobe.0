Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FCA1C04
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D91C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672403487;
	bh=E9Tfz8Ks4FbQ/RPiK7elPP71Rzm0gJ1+Jkn147QFfzE=;
	h=To:Subject:From:Date:From;
	b=KscJexGsuQ5iXXnsJApXA4dJOwx5DzQqJ5RuBjIHV00IsbzzbDEqPSJ8MbYC0TrRD
	 zxzASG7hhpr89L58WG1oHx2YtrZwGrsPLfPZBZ4D/84GVpC1mHHCMvbwtedxQ9qLcf
	 T0wv2HghfocY5aD2Y1PYhUAnkD9RKm8nD3fkx65th46oQ7Vt/LdOoZCWd+YbwiwarF
	 sKFJyx8IU75w6nFWd/EBYirTOEi7x7MEhwDmIrlqeenPMkdbr0iXPgUVsj1Z43qgk9
	 gLIy429Xdv7YhwAbifamJwwCrdqQFQp5VGX2FjtDlWKchUnDlsHmlo7FHi9P9c/Kkv
	 CrGE70K02tL5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D9D8C10F1B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167240348737.14288.9453039182584971692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f028c901379d1499cfc927004ad29621b7c19e7350fefc0d22f918609485841
Date: Fri, 30 Dec 2022 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672403487

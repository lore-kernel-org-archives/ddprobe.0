Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD19D1368
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 736C7C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668850254;
	bh=sxB21NGDzW2SUTK9cPsGbWbRmPemtB1WnzIHcpo1pFc=;
	h=To:Subject:From:Date:From;
	b=KN1zxfuLksHL3WHY5vzJ0tnjsBTLqNacNve1/8wvVt/Ia7h2DH3zTgBdQB/UInW9p
	 KHhXNve0TvYGWWEjJ753aJVzsRqC2U8notzilx8Ysk0ZAdd7SCbV6kgIDQaWkEeIsz
	 7Bktjv8dieuBoGsYitOfzvjvSelGtKjLOKhy49wzIPWjX5Hlp1PNaojhPO4Ga0wUcx
	 oA96jDFZJOXx25n9QEjEV2sFDP2R0RtJr/LngwX2Cn2/apyNXYBUIPC2DY2U5+exP6
	 YKEES/QR0LsVrLzQOUihcEqzHvNAKiYvfJSnx7YTeZGiWofvRr7TtTwQvF+rbe0AKf
	 4Q/4fxidPxeBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58776C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166885025433.31864.8987764825373423288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d4c5dcf9164ffd34f3bbf4fb6320b94260810a490f262c912cbe6f6227d1ed4
Date: Sat, 19 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668850254

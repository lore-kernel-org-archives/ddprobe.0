Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E285A7481
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97A74C433F2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673364087;
	bh=MCsSdY8ufwcEVNuuk46yadcSwwlJU71IxFarVBaA59Q=;
	h=To:Subject:From:Date:From;
	b=Vn0XmV3Xs8JTwMgO7xM03IKpyrCM+cSbIDC33L9VdRiRHb6B3AIaUr6lGseY1canP
	 w8JqfyCF0T7hz4R09vVyD9bO0HlRDJH8ofZQajPmQc5l4/Oat0QzbOtFG0Cz+7Ij1x
	 dOr83foUJ1VvUHLzlMJMx1n7wtMRaNpTcHyMp12PE8FGlGoTCN0gi7ZcMVh/qjSwGw
	 yjHWJDW77T+0GwTw3oC2E+i8ar+pouuatg2ydHAZdQAeLkgp/iWeOOmet4STlS+Q30
	 hjSIPIq5Uj0EXqSXYIy7KcTpfj9C7fXpUriIEvkDT1Ld3AUWgYlWRpLhbmQFXRla16
	 gf5AqWsDnZA8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B9DEC54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167336408743.4375.4934633542783217699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0136aa060cffad0ba5da0ca1fde7d71b2931c28474d9e85422324c17fe785d
Date: Tue, 10 Jan 2023 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673364087

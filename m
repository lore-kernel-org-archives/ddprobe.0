Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC57228EB
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC0EC433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664632253;
	bh=CakX7Qrc0h620fZmB3cvnwqg+aN1C7sWO4HoS0c1BOk=;
	h=To:Subject:From:Date:From;
	b=rIuo67g3rTeo7pUS1e9uGo4bJYJs1Q257y1Zfh9NiWIlTbZmyrrU9X/HxlLwz0LFY
	 PDwpepfSijw8M4mGYE8nl6YEBuRpb2E8JGH1Fi5moAcUCoxwmu+ZRM7g0PTQmS1+RC
	 Xo5fveBSOh/ztWMClZsYuPTmOWZNu3cLSmXNxyAjNOdfby5qUiRSpvbnrh4jk7Untc
	 AOL8WB8VVj1qJQ1wBwnpvNtgUL/QLr+SOoQ3ny/gmyAr8RBudPCf/7vlkbIB8KoQ1l
	 DW2QrJP+1vtRmhLtLDuPw4yK88k2NninupuWp+DSW6bD1Za4A5b8czlqd8d1+gtFYT
	 mfherzS1WpMHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF79C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166463225332.19657.11891966101418707488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ae4a357a8f6d68b433723938d35c6aa7bfa650cf11282b551f3bce69598aef
Date: Sat, 01 Oct 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664632253

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F1D5394
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 764F3C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665257453;
	bh=4AY3mWrTJKmYs76zjf4dQUNX1F1/dxaeWQ3lJG2xBjU=;
	h=To:Subject:From:Date:From;
	b=C+4NDpdwGrW+dkxJqLvRNzDPANR9PWA3oWSieahYITrjxNVUDL8/GqMtidN7V9BGX
	 aXLmi5SXxGPdgLj86VMfUnX88kn5Z5AnPPE1UaVcd2G6xUFKak2Q+SvYLJ/3ygPeNJ
	 3a9gSxpk8wm3jjnrLuYT5mICEw+T5C7wNEWCvrE+bby4JIGA5plHxfTpKcrPG0sqf4
	 L9hvU8vZmGSkKNztQmZDoox0xNExx7LDCWAm0dxn8cR1CM4OlAjqRUrMoE1hcDysSo
	 nDHVhUzlF6g3BCDXxriiQL8s5/hOt/a635B4WmiwOua7oUxMNa+wDkFg7aOsPr7nzH
	 Q9/J3fPRgOHCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5755AC433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166525745333.30221.1272886085379077130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500d5e890092ee8f0793b6d6e174fc8c7d1f83046b046ccbad14c4a279ffc05b
Date: Sat, 08 Oct 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665257453

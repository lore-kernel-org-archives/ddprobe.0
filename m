Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C197A10EA
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ECACC433D7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665994253;
	bh=xIhewNuCyNbnRjO2ytFL0Tf30wj3UNjZNbPR6vJJtRA=;
	h=To:Subject:From:Date:From;
	b=VlZ9Y+ZW0GevQPNwvExOpmM0hOhp5k75TEULqw9+VN4VSkgz/Kq1wQpBT6Mu3hFRh
	 lkYfyEVncWNMp1Rtzfu1b22az5eBXhx+bzRbJ0ql8AQ3glcYnDkHtN78yq3qboEHeq
	 jbjLcZ7w7XkqOfNC2x9HwdpV24ZYtzdBPCXxREwmh+rktvYlbs6/UtRjxZQLT5e0oX
	 rl53DYZXocpc4xXtoVvLoD4O6zkG5yyAXVqh+DfU+nQohF5XVlPFV9KGy2IbH9nxQH
	 8T+9ymtbrfM+eFuwZhmOL8WDACy4fo50beUMU0r80mg/tttR5vqX7hfHyH0XWHp/3K
	 WHMVt7fh5pgAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522B7C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166599425332.18798.10759244946369313710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3dbfe6f952828a409cc3bde9e5358cdeffd0c2d5cad1285352bd9ff7486b23d
Date: Mon, 17 Oct 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665994253

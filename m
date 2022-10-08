Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D173B2F22
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F351C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665266453;
	bh=Jh8rvmJUS+p9v2oKBH7tJmadYOpchaWe2zm8UkSgA70=;
	h=To:Subject:From:Date:From;
	b=UbSMVvQwCeQyEGErPD0pvlGOxlKzoqn42lomFc7mjlNG8ZtjwZlax7s6TWntay5o+
	 Sm2u6VfEqkDZDO23RtqEJ6xG3gUl+wZxhmntFekeSajCn3Z9V3CxYFimahmhi1WY8j
	 wR48Vm5Exkt7sf2gVz3zvV+oJXEk3rsBmuhNFrT2ZOhsKSfC5h38dQ7q4UeFQLrdZd
	 7CHBgpmZnfsPhKUMZNYLJu8kCOHIW7q08Va493B3D5cma3xcBkpH6p+B7SI3UmvQ7Z
	 H9QcwoEwZRA2ygnzxqgu7YLrD78j3wiZhwqk0G+q9vgGYc1E9hMfeg/dHSKRoAJKW6
	 gbj7WDaQi8NUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534BCC433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166526645331.18347.15422762473816523663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6b3dbf39837c5473ab2d3d7175691f78b0064aa8a63ae31629678d24b7035e
Date: Sat, 08 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665266453

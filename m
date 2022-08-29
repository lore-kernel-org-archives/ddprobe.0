Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04F95C98
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 19:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 682BDC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 19:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661800252;
	bh=tzrA4acsjzbr0bul4BHv+f9o6tl60LHPOYi9SjAABw8=;
	h=To:Subject:From:Date:From;
	b=pM0J7Joc9gROuNXqrSrwctPQ0tIG3FS5YuRfzA3PzsRMGS94UR2S6lJirwszIPcFO
	 3o9U25Cqmba8V2xRt7M1tMVy6bEMbdagMSrOMkVe/qkJHo1GKQyxT80FecOeJlWh8v
	 Dfwaxr+nGfkzOPHGlacTaCxDfY1z2D96R7Y4Vm8+1tw2kyUWndplT3HhH/APy38YDc
	 SVqo27klSmMmD+gGJ18pdEiNRyesRiCoH1DCxi1RDnAbAKbfscmhFdoVWKUHF3Pevc
	 LUZx8vaMDGNCND9eMVibZToTCD7aBA/MMJBgsxJm5uVVEBZumF8m+XNi+8obZMZsFB
	 pbE0X26mcdWUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B38ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 19:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166180025232.28933.1468888493423402541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1652d8b4004b078cd70fe0cd49a474ef0ecc9fd8834d7900cb6a916880b8ce00
Date: Mon, 29 Aug 2022 19:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661800252

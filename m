Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A57E9168DA
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFLQSKxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD43C433C9
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700774896;
	bh=RlkHKX1mbXxM/zJ1HVnBOcK30KanWSpcjCtNnY3Gj0Y=;
	h=To:Subject:From:Date:From;
	b=LFLQSKxEukcOzoVQchsIT7p3+601M3o7Gf/mc3ZrzTF+L9u/BE1lKp9UZG+Y0gJ38
	 765+Iz96KI3eh3Q/+bGzSew4G593q6eNGmK+fs+zI1yqO2VBfQvkn52wSGpN2oG+/L
	 KKyeyZmqWpAQvPc8njhaOhldQ+EP3jxDfaBWf5pCW2vH7YqB6SH+r1dpXT+CZYU5gE
	 WWgVZIVrniWaQaobDqL7IOh4xEnVKr2CnlvFqC1vBue2pND1NTRk8Y2XYxdO6v+hzR
	 a9XhBzH95zg7rX4tNi+YetNbHQd23YmkQo25PbHzlh5mlThXVzmTZDfCz5NFegMS2I
	 UnoXaIAMhXaUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CA4C5AD4C
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170077489637.6213.17476411146714451579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f937438f0065079a6e12306c8636843b2552b97c62a49488551f0a76478c4728
Date: Thu, 23 Nov 2023 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700774896

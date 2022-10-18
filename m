Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1C04C98
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D829C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666122653;
	bh=wD5qS0CYn+2LObSS7CDowheJlN8yvMttyhGDeBrMYlY=;
	h=To:Subject:From:Date:From;
	b=uthuwCvW/e0e1PssNyPtypDGBaQNNFsljMaFWAHr4hGmqRGdAOQKiWuvpujuGsx4U
	 QOsh3v0QoIK1MECZKH8TRzVhtAzx3Hn22RsesdCelyLki40hNWwbfxvgagNqVjEiwT
	 BPv0P/ZbdS9L67FSTZUU/iZArt/kLlfAbTQc5HT0qiJxMqtLuOqGMbTrb1WR2fzhPX
	 zm3nWDbUrUMhL2wZHfHGokDYjqWvV2/ChcCbUb8dgjQBgPHOEMGeBBJjCephS1owCE
	 G3XvLjpYFLJCZwm0K+0LKSgOQszzN0rGWaI2koNWHj3tyxwUvSdcRKtxMVT0H3n9bV
	 h10WLz6oLa84Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53801C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166612265333.31971.3862376285228231903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 560ac29a1c6af60e2dd16541ed200971221c76f84da4fda072b278ed20c4678f
Date: Tue, 18 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666122653

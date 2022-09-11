Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6AE7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC5DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662873653;
	bh=4CHl6O4PayvDgvw54guMJACtzjQknkwMTsS1feKGpnw=;
	h=To:Subject:From:Date:From;
	b=UCK/WO1HA2eb1caBYoxG0A/mS89r1ZkkZLLTrEf4YWYlqEaBf0yt1Ordfd7uimXTt
	 W6SMAaBOhoUnRnJMHu+7975x3EFsyHos5MyrMGxNz7yle9KKMliQvWfzOaZ5UUjLiq
	 9dmACiu2zEgt9REJMP3ETMRJg8nWsMp+L8OBTVfXEqN7qcsRzePtZ16y+xE0dpgXpK
	 NqEGFFfQJ/fZEcyDC+a/OZx7taobszA5+r1b+RncEwDpTHklEO0qgLjAkrAzmQMObD
	 FZxnvoRwU+sPOS3jpeVg+gkiqkHXu8XRF0LezhfMJZ7y9Lr4lD+yWNFOXFLEfCOHSQ
	 XYHw4t/29nZaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 505FEC54EE9
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166287365332.3142.9984818402063533587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76d1b8a7a32169d9d326eaeec94b6895b258dedb02f68408d162a5ea791aa9da
Date: Sun, 11 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662873653

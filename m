Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3AB5232
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 11:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9E6C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 11:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688902028;
	bh=dWTvHTpeFhKNGidGw/itpHRsuNtc7XOWh4KUc8shtE8=;
	h=To:Subject:From:Date:From;
	b=vRrWy3YFmDgwYp/eUCmGvbxbbLCQ+B//z65IF11iSnKSHpJnX5oerJJyEuYUgDbPl
	 ugM/Yk7s3Ko163DsCtPmEmNMGBmpRMAlVVG0IXGC34OfHjBF8kENIJeBeztdPkq0Ab
	 OQXwzoN8DebUKrV/z/tAQsndhrskiKHQD0qS39AdMvkXXxr6kpQ93h+lLGM+UqfW5I
	 OSxFIZcgYoCw1/7VvIUhWXs7/bUbfyoXZ5X3C84fg/bUb7t2cEFeoW//ev162nAiRx
	 57UYJPYtEtFmSLV6ZVdFnL5kDHPiqqwCukkPhw6tWzR6Eq0VrlxI7heW48oMR6MSnf
	 QBIqbj6RmtCVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A75DEEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 11:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168890202867.18465.11048629894097955293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1955fb242a76dcf4a483dce3f14bc9d6d9aa5ff4cf2d021bbae7a23f00c7850
Date: Sun, 09 Jul 2023 11:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688902028

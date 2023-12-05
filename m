Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06123ECB
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGtBdhwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D238C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701740296;
	bh=gUco7D+eZG8yo420GB7oqZxIGzoKJ9/BwcyulZVgkl4=;
	h=To:Subject:From:Date:From;
	b=QGtBdhwd7SoXPYoTVLD/3ydzxom7WSeWsSXNzFEG9750YhYJTpXAhjV24GiLKoNmp
	 drNg4Fr1il4frjdO9b8j0q4K44drHfqtSDyODxRamPj8jD5w4Nk9VZjeWwPCrQUv4+
	 8sE2+ljKU64uIDrPR/egMeuJQW5j6ZAcASf06w90EpajlNAsVYOcIxt8Ukq/x7pyVP
	 tyu+5WBCjGHeEPBMPNGVJkMlU8RIGMzV5OIBiQnfOV9jkmqwAgOxfKOjc9NImjlPET
	 dIX6WHKOFxPTYR2FuoqLQ4PxPFXoErY/tYmHhKju/jLVeq7Y+EEor6Et0EP8WhFwmT
	 Um6sK1SGjd+ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF7DC4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170174029638.30353.14783907179123632684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9748cf98fb589ed5f8fc528179450e6d59a327edf9b83e811edd96b8f12f5232
Date: Tue, 05 Dec 2023 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701740296

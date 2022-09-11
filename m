Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1F97F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70124C433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662876653;
	bh=537csQ/q6q5La5YpShnbRaJeiG3MGQ4eXO5LQiNyUiQ=;
	h=To:Subject:From:Date:From;
	b=q+HZOrDAzr44RfSqUrNcEn63ml1RubyfbXa+OrPHMBNiUs5MZ4yg9hnQQeOIRHM0k
	 tLzqEzZfunzPbZmVP/EkslGeCjEAh83dFf6aQOk5KHd0J2pDBciXxd352EqEA6pVI5
	 sedk4BnEAHpnJ/aIBCkOfA3QlcfxOyS8hAxu7Shd+jgTfhVlAm0g9s4D+d3horQ5LJ
	 SweG9YRp+cu0ShqRCqKeWQVtO33AAsLHbC1XwB9iYN/oGPvc5XwCfylje4SO7Gq5nC
	 a2/QBNBIVSpZgAegN5HgLSwNLytFzimOyPrk560c64TXGxfMC5Ad32n18jn7epKES2
	 V+GfpdIkqi1/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57294ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166287665333.3183.5856425156285640764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f91fa74772c709e449f20faec1c87b9bf5fe6cc330d30d8a72396d5d10a5b1
Date: Sun, 11 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662876653

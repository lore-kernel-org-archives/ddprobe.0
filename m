Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4590D29AC
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 22:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51A8C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 22:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674340925;
	bh=aJjcgvhXXawRXYPvUTbTGaDrvBisEjekP4cnTwW6oqw=;
	h=To:Subject:From:Date:From;
	b=sVeg/bwgcyZZYPkf6kN/zi1hoBPVali/Ul1obpxVb4HWKM5CWcu0cFE/W2ZV903NB
	 sKDnQmiGOIhFfoc5D02VDYOAeEH3Z+GkZZSKFsw9TFXkCk7EYoOaYtDQyMJD6UNWw+
	 GobKoevxnu2Fqj0nPMvgNsJZrKqy8c5mGLVThHsJEOcDtMBO2QM1gQDhI+h7QC3dVC
	 WJ7VGMK/cbifKQOt5+AL9+omQRt3799MCCdVTW+6r+9kbQa6KpVV7zaW7WpW42HUX9
	 EoO+y03udN7Vs02AdDQoC4n/n28717U0OCQrsrp80tGrpi/IM2L3CIO/r7Ky8F5IjV
	 kah9DQkAbh8mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83F9C27C76
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 22:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167434092574.29513.7329346108172346834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56356522fea358db283f74b2737345f6dec4b1228b1c029374c190428208a093
Date: Sat, 21 Jan 2023 22:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674340925

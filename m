Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CDD15B7
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3RiUIRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86CF8C433C8
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699166896;
	bh=zIzEGJd8YpjczjpzkSzf2q+l5Da0rQgBebi4nJWLtjA=;
	h=To:Subject:From:Date:From;
	b=h3RiUIRmU7MbK5rhPGBCJ6JAiKF2kwc1YlUBOO5YT/YJIAqccLEKcSmn7GwjY0Qkx
	 HmwQ0d61jKclLuQtUFo8TmiH7J6W05ZgCyT51WSXKqrKq1sP8dC3xucj9Q/Dp2Iw/a
	 w0/mnyVIPbE4bpEDgBPK5JFV8/qwHe239tikips4QLqc/C9FZeOxR0MFG1TKlE31pY
	 Xcg05NASBDpKeevsD221HHJ9SCxcji0Y0FHOWUVe2ZsiV8rpk6UXYrNW0UbdwIZxIs
	 Ide/RzB0R5kglewnPo616cKmif3Wb5kS85zlhV1hwdxrDzi/FYpHhFsnDs4qziHZaV
	 gA8IhncULGKcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67308C4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169916689641.15935.9165345594373870609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eec0e5f093ef1dc8bf551a6d009219ba21c638cb699392b56b51ccee3651979
Date: Sun, 05 Nov 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699166896

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390A236E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 02:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9184C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 02:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677378305;
	bh=BZRLNAT8z5UGwIYCg6AMP7UraJ6iSk6laT8KGGQfP0A=;
	h=To:Subject:From:Date:From;
	b=oiOcufEPPbFy56ySrRmT8D0q7V2kJeBosvNywLp30Q6p3u9O3uNmolE2gwKZUWOQf
	 mcrIZfik3VVJnVwy9WTx6QBeGOTZCFjvGBk8GRTYeoJYwz0c7JxEYU+1yJL9X5GmHX
	 sMl/Uiu1ME1d5ZVVV7C8IgbdvNmMyop+E5+zBT1N6ZP38DMaL5ZBRuePxvdMFQWfzO
	 w3ASxona0+hrshFetoq5/Y3eQ1kHzuffGVgiX77sC74Ml8oB/JSgtaK0X1FTkt4/tq
	 y1X9T6SfOtFiZ4byJJETKzmmt111qixb6bd8UQobJj+2ioVKmz+6BP4TCORkz2fWSh
	 igJePMcUGuu9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA36CC6FA8E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 02:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167737830574.29130.12482002173356440272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f9d999a116533a4633f007aad156bbee998ac457f40ba6d7684f51adb357f8
Date: Sun, 26 Feb 2023 02:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677378305

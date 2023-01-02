Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4787E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E7BFC433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672621887;
	bh=PMrjDc6ZJRhjqojs0tfz50pniUhAiiVl17ET3DQWUD4=;
	h=To:Subject:From:Date:From;
	b=HSNgwkDQkPEUdbY/wBjrYPQddapFn+cDli6wEbh+4I0Mz2ilcFc6mitNwVfFU9oBw
	 SBvRq3rK34IhfnWzpnSiH9gbWUMuAzO8WDvaWmLAYYyaV6LH7eAK71eZbxDGSFVdZe
	 VdIFLCBDNW7hA2Ni+PCBWcKsLqYQlKuRCHGZADf/opDNuk2r8ca/fSociZazL8vy34
	 99wraS/eZlkyOBxoFYuDMCKVbtUYCMxUQ1SMxUltXwuuNgj4t46XHgvoGc60aseRi7
	 xhpm9vACJ/oj0tVj+/GzSIjL9z236I2GrUtwCGI+erS2/govFVph0w3GNqJAQAwgiC
	 eDk5pVjpSACUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DAE2C4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167262188740.20710.17357585437448724030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af66fc9f619b79344199256e858777ab29172ac589063a45b4421da7f0aea9c7
Date: Mon, 02 Jan 2023 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672621887

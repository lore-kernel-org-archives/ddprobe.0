Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632707491
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 21:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 199B5C433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 21:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683064026;
	bh=bkobJpE3AtJPro7EFfcXbjes8DIbcKDhsAjADmmflKo=;
	h=To:Subject:From:Date:From;
	b=Ik0rYj1tziDEpXtmdu9wKpVpuVSRc1zHtnXLSduIJPwxPW+ieDjTdS8Q+8wlG5mvd
	 LrADg/qv1jsSnlkV2XjLQkNZd7DJR7syfjsir+n9yDXrum45V3wlqqcAO0cGMRFtwA
	 p4BMu7DPEfztn6uH8IKekG57zG4Af9pUv2RqCP+dsR4YCBy5D++NHhAxqMFH/ACIBh
	 OhCSk8vvr8JQ3cxxUPV4SD97gNzsaJa8SDyXXJ2xJ5mi97GklqoRPOFefhrD7ieCiq
	 vriyUbUT/5sdTZNZZBo51T5S2WkNVHW+4+Y9tAeF2Tj3qpTVL+gbK7TN1vxDdqS5zp
	 7utqz4Kxjw28w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D52C19F20
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 21:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168306402580.17167.1989421998549788659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e775206e45ccda7222efeaa15f52569a15d9331fb95e89f752637759879d04
Date: Tue, 02 May 2023 21:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683064025

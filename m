Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEF537B
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 655EBC433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664194253;
	bh=V2EeErg1iEyJEryDe7cGtBPY9f/u/Kr/LXkes/ImFbI=;
	h=To:Subject:From:Date:From;
	b=Sz9Z8Wr+PqagbTKfHg1Wvwa79pC9qoLDTT7ErfkUMmm0pFkswI91g8e2bSGH/5rNt
	 5ZWSBIbKiw4A84Lntot/EofH5OnMbDgA7AHDF9z9SeKrD+70fMg2/ufz7vtYW2Gmrj
	 YSFwWxXKEZGZL60zZC3yrm3SvCHul6zLa/xvse9g2DXA1XFRQh+f6yto3ZKURVCgHg
	 dZlran2+Ly58pqTChNq2KZJ1BjrmsR87x2vNiXt5yD6WCpk+eDX2wpqbNsFXkPnydW
	 bnHVioLeHI4v9/1ff87YwSvb9IN4uD3C6vEpHxc0C8Bt9fdgujFK8wo/C5fgqeOJYo
	 gsj6hHlpPGYWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5024DC32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166419425332.19290.5814342763255111417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab286dd9d948c7afc5a94bbf74d793813445db6b540bd97406ecb046d01a3b8
Date: Mon, 26 Sep 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664194253

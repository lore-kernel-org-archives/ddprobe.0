Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF87C650
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F96C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669708854;
	bh=Tab1f+c9G99RyBqAjcnzQN9ws/PisBPzaP4gse2VBN0=;
	h=To:Subject:From:Date:From;
	b=uIDsmztvLsaA2SnseUm/qAdsadXe8XYzV60/0fqeG8iWIvseFQr59OW59FldMh3WD
	 ZcLd9Ul7/e42/qgi7T71yOBFNfoEPLaaoPZLw5Av/gELmoq62Za/5voxYisSZnXxvI
	 sbpquOBu36rT0b+4giUV7QQ1PmsnJUHv6NSL29X8MT8Wr1s45uASr0KV/q9ZnpiGm1
	 5goSeLCW3v5mZa64M0rLlM5BWeYEidcrUDhaP5nvZSroaXsd5FgztToYii2pyAx6k4
	 wzk9apCFeZciDD+2wX7tljUXU6cd7f+W68WyPEePspK1D95mX2+TEkA+XHy+CJs0mc
	 ryfnFHbpFy7Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CABFC4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166970885436.6414.16375085218474936372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197956f6c2663e5a2939b17873d0677ba1e5f9c67d3620f1d1764c10f1961158
Date: Tue, 29 Nov 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669708854

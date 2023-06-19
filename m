Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C2AD53B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 19:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4328C433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 19:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687201928;
	bh=FqzUJYgozFuV5LyTouWviv+GO0VH03mtr+/MbXOjjQY=;
	h=To:Subject:From:Date:From;
	b=R2DHbMGKVSgxESBk/Z7FIEs9ArIjYzP6N1mj3yPMoGAGEJ3h9cPTBFP9ETqMJVbBV
	 4k1uWcUMFZI20NF5lv8hl6O2rWnb/7T5md8TSimBrr2e2gKpFutTdCqydUloPg9EVH
	 odcwgFa+kaBfGAuQv3/zIlOQg270gvD9WISqENx+NmQ9sLBPymCRAard7i0o/5he0y
	 BNGXJaBhLHH+myoWHB4EVHIA9R6NIgpAD6rRRXjfUER/wHy2G4up6mF6Vgka5nCk/E
	 NltpOiq3aFYkQ0Y1KiNkH+5zK1gsyko5Fvh4inaMTspbj7/SENhmt2yi8G1cBCXlpz
	 2BM8LlOI3lC2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B591AEB64DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 19:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168720192872.27261.16284670243527855416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c12133311022435c8a36791ce366794502457169b87cdb8ea8ccdc5e12cd0ce
Date: Mon, 19 Jun 2023 19:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687201928

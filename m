Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887171FB35
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 22:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02069C4167D
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 22:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692831249;
	bh=fnU2GyU+ZVep9ysmmPAF48BoaAyW8S2yr0HEW0c0rNM=;
	h=To:Subject:From:Date:From;
	b=WOR8Jt7T+FjkXnzEOuiDaFsGKrv/f0a18IOLCZKOHWsHhW8RCIOqN/3wPNU9NXaD6
	 RJLM/anglKxqUAc48MK6flcGiMDljJSnMdU608CXm7QuE6FlrpuA50M8hB7Skmltd/
	 SXpSco5lstTpQpH4WberEn0rsCOAMBh+SWpiR05qgaUElRhgxEcEWcdrA98aFkWvYj
	 BUcPSKLaTbYGz3owTNSMOyepV5g6dRvDQNyYC7F7rmqWpbhppQ8Jc2wr4e4w2s8xzv
	 vttPHf0GyQzoi9nDnXaE5iWk+RnJscDrrYq27stswmZvRbhodVTlaiBGHzKjrW1tMk
	 motLeLCQHItqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B1FC3DA6F
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 22:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169283124872.2813.11997058922537538213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab3fd4bc11f7bf2a546bab65790af57958b630f4d7ad1fd9a4dc1241801416b
Date: Wed, 23 Aug 2023 22:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692831248

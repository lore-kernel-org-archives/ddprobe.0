Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4529A3D3B6
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 11:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F1CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 11:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684668725;
	bh=ki6UlyHVJQNHZpw86vIVAkb0Qzv2jVZmvMggeNe0/S0=;
	h=To:Subject:From:Date:From;
	b=crxEugm2/CwXVgn5VXbhPYpvs9WCMp5ypzthj1LSP2WPQ3eqJNB3fnLrBAHz77qkD
	 cRwjSnsHBbOdJjnFcdxWoXfaAISpev17zTwxLZZ5byy0LZTKgy307CpWNSCC6ZCbTz
	 VgZqLgmnF3PL+JhVFGe3OvM9UoBqDZd3Dqds4SD2HJhZlo9hsyG5wr+CkYfuwSbCrs
	 sua4J5Cy/hhppL6eG8J11HfFR//y9yMaGiMVuphYZT36IbeXCQXJzawcEPwPggqK/L
	 6jqRP0Sxa2PKnZlxrfcTEMvP/gblHPz7BJ76M277/bvOt0UeiraxIDNtvJIq6tgycs
	 kVnJgUL0slO6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C335CC77B73
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 11:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168466872578.12432.8454445389654632333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f92a6dab8aaba87a383e7f8df530b471f03b4c2742882f7297b63e8620dcc4a
Date: Sun, 21 May 2023 11:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684668725

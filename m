Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05D3184C
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 786A7C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671519087;
	bh=U5B8gemWDvRgJhXF/Vm7EAhinrcpVJLzKN1elOCzJhc=;
	h=To:Subject:From:Date:From;
	b=KcpxZJpdYymnUGPTEWJZ9n/7b5WKvS11M0GutyPhjuMZiIQ1aTq/lfr1gZ0mUlcKk
	 exCJMspTSp4HBsLS4noY1PcIDDFjzERUblt36XIshE8ypmv3LVXEaCYLBilFPzB6TW
	 bh1Vjt3dcLGJASiSSMF7ACHl5eUS9qijZGln3HSt8D1o+mZHQY7MMusaDsqG7zpfi4
	 1dpnktSjSpeml8HICUdZWYyoEp8kml1Penu8rQT8TOoR6DcJzNCnfJQ9vniGcuRlLc
	 p8hzYfxJxAvkDvrjM4hVPKi79kK5ugWfYj3jvkF+XcUJEQyDtmh0qkWHy9zezxBHzo
	 uvVzGpxQiNQSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E747C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167151908738.21214.12189068869885434860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c04854179205f9e444873f09f27ac0a90067f0c7e5b35ce76dd7d536d9d8876
Date: Tue, 20 Dec 2022 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671519087

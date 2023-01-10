Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0093B6FCF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A95C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673365287;
	bh=ll5VkHc3YP08zJxWvuakXkDu4eSeRI6mpic3vdXA86Q=;
	h=To:Subject:From:Date:From;
	b=db461RYh+MVTA5BXmcYr044GYy8IWMjb0oi2DY0os4lhPFUg76GftrKIz8hXuVDtZ
	 QuUVFR3CpEyhFXwzMUOzOcTnTG7nhheH7kARThg8e0NHUHJm/Ylt4sgnuegwBkXL7Q
	 Rm+e5uUqULSH79S8rDPz2H9qO73DVKdFhNcwW3OZnfRh7yBQJ+oIaLGn3aX3nEG3+1
	 pIXDgda1wXQXhfvgjub75g8QDksEsminRMVVgp2QuPxKFg+gMQ88fl6t5Bp+eO6i7e
	 sS0IcjOhXr0Z3CBIg049vypOn08idmQdedEE/y+Wza4MTOj7wEgFZx977+p7hDIvul
	 FtdzEZMJ3sw8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82C4BC46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167336528746.13550.17295749020538761022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0066a4199bcd89232cf80ce2308ccbddff939ac0ecac51509667e80915fe3b
Date: Tue, 10 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673365287

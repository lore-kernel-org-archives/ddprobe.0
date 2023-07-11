Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4341C14AB5
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 14:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A94C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 14:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689084428;
	bh=Xl4Z0S8q/JIgH1aYKoJ9wmZunocUwItwHBrqCiLbC7s=;
	h=To:Subject:From:Date:From;
	b=Pk37kFlfp40OsdfbrHAcr9rUQTst6PwFhD4fGuNgUV7Sk+RDIUQuyjsUTcizu3YzD
	 AN/xmMrbxtErr/vPPR/ImB5s1EtzBFi0oTFx5wQQppPbu/Y5c9MjHRXCPYhfdyaG0J
	 b35yKS+PLSXWeHM/6g1N5t/gQ9zAWAnoV4qWqiOIKiWOQxdAZZdYhUDgzOIdmWwdrq
	 f9l/Q6dUZwNGy8JMnjYEcOE+IT5DsxldJnMUTR75ry7oDhqzO8pZ7750Y9VINUHJ4K
	 dooIvrYKsXisRDhC2Ci5S1OMsOnSHABuoYl+OAYl3DlyYhkXA6oegxF+SnfZp6PF+w
	 uawqSUjd4CGuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5FDFEB64DD
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 14:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168908442867.18004.16358474515797495291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a126c105f8a80772c75429de14fa81e5656fb05286e96f5a5ecafbb3e3ed38d3
Date: Tue, 11 Jul 2023 14:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689084428

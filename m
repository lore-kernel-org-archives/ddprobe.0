Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51607B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E55C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670906487;
	bh=IjXW6h4Jo4rY1XJ8Q4qbntY7IVlI1QEsAl28S6cYVWw=;
	h=To:Subject:From:Date:From;
	b=Bb5E2RHTxqbmcKgYaIO6Dg7yHuHtFbwWPHNY6C6wGXoEPXcqzV33/4+irmYMz90Sn
	 DoyMz+moOkbhhXpojgg7iCfKw2/i2yJK5/s5VIYcI2QE/KwN+l+3YgNhOfm3I+1DW9
	 M2MnZdKMtIMEr1oOKL9NmM/Wy28zHyScW9GKDYYOeNDq5/ggM84cJLTlDPvZybGmMl
	 eY34o9OlBM8SB8Z49qjwnNdSIa7DU6qVzGYCRxiWIFNEe9gYuuHZyr8W/npE5QVvBm
	 DX/cY2ZbLmJrDEmgCUZh4ML3RpSq4bYiYmmPETgFP3PxLkebmzWQV4+jSVtT1CodaY
	 v4M4aNEoVf4Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67DAEC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167090648741.29308.8980544995772839940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59dc26fb3beedcbd74bb6293e129d7ca2970d6b4c13048ba38ff6bb58e9ff8cf
Date: Tue, 13 Dec 2022 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670906487

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C6279D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 11:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF93CC433CA
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 11:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687866788;
	bh=eBp3ZP3Dt/ME8JG7fvSNppdERvHMHOfaI7hetb7SRhM=;
	h=To:Subject:From:Date:From;
	b=gEKUSOOvMs/wj7sKf0jgOERrwBQQme+DAe0CT18U6kN5tB+FVIOPT1x85u0pMl5ga
	 PpCA9+WeOlUWyTns/R+Cyv53sXvLM81CWUDhECnYxjDb/BzHtXa9mQa1SPSt54g5iC
	 9fcYbFZgeqMFIgZdBdjcT2QNiJKMl4AHaGOMnqB4pecRc+eaRtGS/tgAPPH2pN+W54
	 K/rJuAy40eURczwQ260nDxuSgU2rr9+q4EHdTQ6LHuVyeG6ubY4gh+1yWfMn/y6XXM
	 uGdX8gVfRqAsy/7UrgQLTSUfrGCMtmo+4WHBDj4unhEi9y2xau5OROgdB5nhfR224n
	 aHGq/iPqw006A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BA5C001B0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 11:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168786678866.31960.10381581308858861814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad2f544bbbdbd0178ae14add9b3caeb7c867e2416240bea948c0469e23cb9cec
Date: Tue, 27 Jun 2023 11:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687866788

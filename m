Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F93310FA
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 19:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE133C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 19:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677785765;
	bh=eYvyOMmhhGjCQ5Dg/bpxSfenFro0bXRiY2eavdSDjmQ=;
	h=To:Subject:From:Date:From;
	b=cb27gjCMBJWAN9xJPwUylHx7d6FeB7+I4Pt2dJ+NOB3P6ECokVR+Q+YTWz1w7UVWA
	 Rk9STLIYnhmejEBa30ArBuFml+lrEpao6VLcZNqzrTppSqj7DJSpx1wGDbBJD1aZpz
	 943qR7FISEPfIj/CJE+hm6ophvObWjqx6uNyI7Mn+ZMaP46WarxaqPzL1+uN81niyJ
	 8Luk9WO9KlqodJytDrTP+CGKptdIP2tYnjaB1rMU9r7KWquAN/WmivDkbSB+sQuMDa
	 YhDNAi0EretOKLLPIUb/NZgy39aAGEHziDwBHP6yL0XRynl7VJgoNrhQx8jNRKo2xL
	 vCPU+jJLIyOIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15A8C6FA8E
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 19:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167778576578.18338.4359690829155397350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e71755dca60a3defa4f0fd8acaf2aad375125dddbd0984bd582d33c7483e3fcc
Date: Thu, 02 Mar 2023 19:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677785765

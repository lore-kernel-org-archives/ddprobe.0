Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C2E7E2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 806CFC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673724687;
	bh=JHE3rt/bki1oFLDpE7fgN2l2s2SJZiC5/N0W07HXk6I=;
	h=To:Subject:From:Date:From;
	b=m0Nyht9sGyhxTuOiRezCSYcUm2r755YBU9Pizhck0t/byrL+/uBsY6CJrecl22faN
	 7eQNTP2aijImcQ+p2rznGxiS5Dt81J7ghSA2dOQWqxWnsllbgqx9+XbfjYSA5hw2+k
	 mnwcJ0CWcuzjkQmyf6ll9Pp4ReO9E6e8vjF2wWiBfbwPwR6H+eb5knSrrkjksYurA1
	 nkvLvPTmi12zBmWgrF5NeRj3gN/9Bl4Z9vYbQb4te92FiKvTrZCzAh+w0Nous2YrWK
	 lCxg5pI0Saq0lWt0QbJO65CN5Ge4bpqVTUBlCAvLgeK54+cAcJzD1P2cp5m+0PWAWQ
	 GcfnfMUBwqTVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61EF8C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167372468739.26982.7521426720681521393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d71ea5e505e821d3e11eb14c1164c4f2476b06ff5ea536d1ae5b9f15a7aa9923
Date: Sat, 14 Jan 2023 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673724687

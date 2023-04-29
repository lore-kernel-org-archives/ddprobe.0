Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6928B17CB
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 02:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 044BCC433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 02:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682734506;
	bh=cQqSuyuY8IER9O3UsXR80Vw8c0M+ZxAPz1l4ZnVkMHE=;
	h=To:Subject:From:Date:From;
	b=gfJeF+XGCPU9vPqSDZQ1bJOIH9x53jHqSuU2oqpZcPDNHc1AlqBJyexlOV4xUpzVW
	 pZ2N5t3u5zByBKgfgQ6XCXuxRFu9eHAoLSE56u4C4IRNHMDM0y/IsSPcP8xhJd8JHe
	 EgTKMXlbHuIUQJlPZfYt8qBuY3HHChCwxNzhVkKMDk38AK/8HNNqrE/BdB4WOSxZuU
	 9zZUeSBoiWZkotsjiZABMzZVLEEuM7vWCLYS23VYvktLKqHkbW6VkDogB9B/KP+YBh
	 aQ2u04Rn76oYd/EMPrFT/aErniVzHzCg5rL5mzaRvhTgS0aPzBAlvAj4HmxyBKgmHS
	 zc8CMYOtI3SdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9E2EC77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 02:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168273450588.14610.15483787644341829680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd3929fcd009aad2975635b3559ed9a0ae0ccf5a39765f156fe1eb3870da3b03
Date: Sat, 29 Apr 2023 02:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682734505

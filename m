Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CDE648
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 05:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB03FC433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 05:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674364325;
	bh=MJq8scIngfKVkjrPPkhBwz0CX4nZ19qzpsWYQ+yQ2vk=;
	h=To:Subject:From:Date:From;
	b=B0CP+wrtxf17kAJH3UkqRi30XuHm3K1a0Ge8n6//OpTwBWBaC+caOo7le0fNDqRd7
	 7QYh6liWHaAyUv8zdfK1SLe2i6rGyOkBb4dkPSdl6PdGHAeuM3ArfjUGoJM4YCbZ2Q
	 dLkUFHkSgPYlArzK6TLiUO5/Lbp3GkK9GKKZxsmKII9lJlFGYZSAGuluRrOyIgPxWC
	 68QqkVcaiS6le/O0wOP2B5qFKm7XSU5Y3u0A1nJMn1K7h9mEX3FDOdOd0b/bDg90VO
	 5/AnA0Yusx81FaOQMtknT2ZBuuB9aEMlG3cWaCI2BQ5E42fwyQ+4Dq1gJ5jC0MI/wa
	 rLNReA4saebBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E33C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 05:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167436432578.24454.15834549849857614506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df48e045ba384b91bb8ed66cb5c5e5a45b15b7da1c1a4f2c17072aaf27165b49
Date: Sun, 22 Jan 2023 05:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674364325

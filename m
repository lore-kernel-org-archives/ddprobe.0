Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7FC369
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 01:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCACAC433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 01:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694655248;
	bh=bpHCgYJ2idOsV53OcOuYIAExJZ0ccbhE6kmkxjW9PJ4=;
	h=To:Subject:From:Date:From;
	b=k9cfKq+SzRGX/ftNYVGwjkJSLFgasX2fq5ht19g+se1Qz5DEges77pj7fU/VJlzGm
	 3cQm8x8iPeFEF+DweJeWDDPEPYbYPJcxqglm8vhZ7NLQQwJnx9beVI1lHgQcJ1gi6a
	 AWKAi/k0bycvi8JwVmQlbAgcICfq+452YJTr5YGvNWrGI2JDL6OHtPNqr/fZqO8uvw
	 MSVt+jYQbHyY/PBB/OSQ3JxAmObF1u8+DRaMvYKkHexwnZlUufzZON9+MWJNpHxaGj
	 1WSHRq/J/nMW46UqhhePdOowKm1GYDhef65dPdTqWVF34XpcVrJacXVU6SMXSU0Aw4
	 L6wKxZhE0sy+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB470EE0212
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 01:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169465524869.24489.10341054682058649950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054de4648bcf5ad137d9b627d4dec83edc42c428501a2d2f3acde9749b7f096c
Date: Thu, 14 Sep 2023 01:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694655248

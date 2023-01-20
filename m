Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BA7198
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88257C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674183087;
	bh=gito9J/z3UCRPm6vGBmsuROdLQYePXsM2NqU3TzKWuw=;
	h=To:Subject:From:Date:From;
	b=pWvTOI3R5Muizwbbr+RvP7La1WcMBe8svNJLB1AFXnynMWQFQoEmezaciftNbXImX
	 mxZO0d4+GKkDky1JQtHcGpOgrLFWd9WHuVL0hiO2xGxZ89NBhUoqd2GFJncgCF6q0u
	 m4DUHl/d6Q+3j++6KmQj6HGaMwF1+EDWxpZpi/quVtR5sg/r7IGbQ/Z1JAd5qZnHzj
	 stozreNeLWwgGz87crcF4E0XcXlhYtF5KonDzivhTnVQujF4GrG6kLKoAs6xkmc96R
	 NZMv771x4xkRkv6t8kNjy2V9acagU1olpc47zE/vxFAux1soryN8Bvjc3WIhOnCp1G
	 OQB2jgi/tbGPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 701D2C004D4
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167418308745.1082.5307997944910844000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9446743f910ca88b5d8937a383006e063fe394b33b612e071d9a4dbb4be4034e
Date: Fri, 20 Jan 2023 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674183087

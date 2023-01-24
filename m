Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7476FA1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 15:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F93C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 15:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674573785;
	bh=UAZhKrbnQ7oXXCo9DzfBh0LW6f/n+rrS1O1IbDTETa0=;
	h=To:Subject:From:Date:From;
	b=OfKp7ulx5y0pfeoPY7skU+1Cq2x54BRiaHmM3ZPM/pXb8Cm1oIQ4t2nqpvJlvdfCU
	 4VQpRiNwMkjAVVqWdlekZcP+AHUroZNOl1H/KBxK8i3eea86ZNvKSgYpL7P1HXCX9k
	 MAnCvtwprmpuFALg9yGfkX0dyp0G31BtN208q2yihumchO6XJw7SQ5LXG/WKyZx7qo
	 zlUYHp0wdfKmTXQGUO+YALC42rOinQzvhblo6jGxvBLgaNWR3HgpuXykzsBcXG5dd/
	 /mhdzRS3GtFA4PZ9O1XWzLv2lLM1yMdWOGfwa7wB9Z0zoejQKUkFzfxsY76kj1mxyI
	 q6Yk/ixxE4jlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2D0C38142
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 15:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167457378576.5934.5801934246621506660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa88a1d97624918b925dbae4929f431bf8bd1689ae3e07791a8e8533ee4e0f8
Date: Tue, 24 Jan 2023 15:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674573785

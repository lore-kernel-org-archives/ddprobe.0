Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595FC79C8
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 22:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BC7C433C8
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 22:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689546068;
	bh=mgZU0SY4H3mprkHyF/OBrHAH4V99eH4cGgzK7vdW/p8=;
	h=To:Subject:From:Date:From;
	b=cHWmAKFLOI81veDFBx3Ayj4TpeXWJbWRQcghru3GXbsbQ4v02YANWGVG+Z1cIncKp
	 9ZXjlCmOmGJDZSDFSTaO2ieaHiUmmKCMcgHhuh9FFS1Urw4XWPzykVwdyccNTAfq7P
	 QCPX6Y809NHRadQB/BWjVhBXWPEnoTa+wkudQaOgvuGPSqkOk2q/UzwOB7MwLrqG1f
	 2nXgU7OAWpS24sNivfXUN0v+Y2OZeQku7ws7/egmnvS4zwqEiRo6fvexSQrRJGgLy+
	 DcrBhC8l2ZEpM3nAb60mmGfBr6FIlL8HEDwZU4ey4Ke3h9hPCPKa9Ufp6eJHUZFhiy
	 Mi7N4T/6h8xdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C62EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 22:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168954606869.32222.4254361819085115041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e7bbdfdd991c558b3c214d3477882db0e13e8dd5ce4e44b69937162b69c9aa
Date: Sun, 16 Jul 2023 22:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689546068

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D0FD7464
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 19:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5244C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 19:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687720988;
	bh=5OlYp8tEkgP5ki6GWNUWtwAfZqJ4iw4wX8/lCdU2680=;
	h=To:Subject:From:Date:From;
	b=J1Au+GhnFwDQ8r5BfdIFjMoHPjGsQ+v1rRbujCCQJ4Ig6mm024nBKZB3i3o7mh73e
	 9fBYwTkCGqXW70ZBJqLq+2a8Jn1mPFFYozlk0UBsjYlCo7axvX5+saLVwhK0Ur7/JW
	 8oSHHegZm8KZ+BCwaGYr7ENpE0mviyB0Q/Xt5YpYoSvC2JZnSk5WIIImn5MY+rf2+B
	 6Ax0NZlbpwIZ6TN+Inmd12bPVNlS4HrXdq5/pa1dRnDRJtOWI0Bmxez3edZFFn2sVL
	 8eC2Ehte0jzv+vsFUuBofrlYAwdIO389kHETy191f1BCFUEYwuZRH3x6QIMPQ5GNy2
	 ThtnCr8X7bFjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C4CEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 19:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168772098873.12025.14999554345622297130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3a1e03f789b2a83b5e9a511ab8951dbf70cbbc9cfd8515fa94d64a481cff72
Date: Sun, 25 Jun 2023 19:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687720988

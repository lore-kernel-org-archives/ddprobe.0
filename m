Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67592D62A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWkc3p6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C04C433C9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704464896;
	bh=lSIhaz6Wjg2GuDPFc4IqIfaVI8kiSrbnUCEf4l+A93E=;
	h=To:Subject:From:Date:From;
	b=BWkc3p6hg/OLTYVLyZI9w7iAMim/b4dkHOgxc67DmMd1zHEDZyOI7UDsJVl+/ctvJ
	 tXP0w9yNARKkdtXOqXYCW4Xbb99YiVVE8HFMFIVe6PQuaZuA9RzM17L8AdSi7BowNM
	 cMEgHYIB9VMBgCDbdL0LG24ZRxtUra6Ux2uEhAl8BYiS7AVQK9UN6r6q5VTND8h5iQ
	 cZfmaYL31S2BrOC+zr7MAvSYZPR0s9HxJXIZwohV+mLHYQQ6ivNp6WD79cIsIw2LpU
	 w+w90qiiul7in8NpKuM/1LKRmJxn57rdJSMUFJpmGTrI6c4BHT2xn8yrnca6/KzuIN
	 jI/dmBtRYqdtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E24C3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170446489639.7553.7849974987861831500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88794f97d7e4c61df626d8e46289542b4a6160ebab1e4e2ddbaaff5619a9913f
Date: Fri, 05 Jan 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704464896

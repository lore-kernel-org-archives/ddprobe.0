Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340C57F1
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 08:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC217C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 08:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679040065;
	bh=i9kvzOUdQkImGmkQ+HIre0XCNilmzV/PHalcUxWOSjA=;
	h=To:Subject:From:Date:From;
	b=l9bJka2STojO2Te48WPHnMzQtAAWVY3HSkA8xyRc9iMRwouNu5rvcLOH+IZYwIRAC
	 hi1iKY1dyA4jAtB7Dlx6UzoNXKK76/dnw9teohZuvzYWaSmdmD+GwbdDegNY5bRgXt
	 gC8dUhhojAKpWZVyYFiK6UeMAUXDWYOcYdax639S1HhH5uaIKnaqYD+IuqUkr0Jooz
	 joUM+WBUpocICeCefvkpBGGP4jlTsIfFKw6HeC6BqwO70MCtsyX4W/OhN6PVbwKX/U
	 MtJ6+Q/nPw4BxYxVd4J3f9sSzgi/BnMlt0Ch8ptNo8ErS7NfJlfwP1hVh5XrleNZ8Y
	 oO5XS8ndRd4wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C5AC74A5B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 08:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167904006578.23183.16095718521634084377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2585a9a142b52a881ed211f4bf6c7fab7af099fb8e65feea9b22df7a5a591a11
Date: Fri, 17 Mar 2023 08:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679040065

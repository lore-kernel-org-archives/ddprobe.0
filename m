Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B75110B
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 15:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1FAC433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 15:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677771965;
	bh=pG6EJxnFwwK8q5NFkUBCyDtY1YdyQH3eVnXMXwXTEuc=;
	h=To:Subject:From:Date:From;
	b=uIWEfljGxKdVjoRngnqgLcpHU6OhtW65EaL4bNc/277VMekUH2NkQreqcDSvQyffY
	 yIgKL25E0M5X9yTTvqRXXQAGhnXMDjxhA3u9iHSLUVxJMthcaaFjVOsHJoVxgmSk5h
	 B4s+pU96eA4xXBN+6BrkRoA7/1ckzNmiztLuoLehCQJQJm2C6Yf3ewASUSatdMicP0
	 s/PRnTkOTgObo6vX66Pz6j4lJhQkFfA46xdHQ7O3Hj6x3yUTFU4BdPs4ooQ9XwMlS5
	 ZiZCIeTIF9MCQJE9/QE6xShX7jK9ZgVVN7pM3DrPqh5sgGNqCpk8jAFcuz9xE2Bqdm
	 CS/oWTd0KUJEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE482C6FA8E
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 15:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167777196577.19118.8037910080455384834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e14961884183a61501cce80fcb87f657caba42aa77a5711aa696e21a191123a
Date: Thu, 02 Mar 2023 15:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677771965

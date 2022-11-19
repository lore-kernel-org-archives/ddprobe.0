Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02AF20E4
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78229C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668856854;
	bh=kVQOcVH4dRhlXX+P0HgBvnojNDR+Dg5R5lQg1UHsaw8=;
	h=To:Subject:From:Date:From;
	b=K3l+mRDdrwXt/cjbnkk/Wm9404PQVmb8AsxFgLeQo1qzSUpWcyGyJb0aDjkI8hFAe
	 ya0ZfI/ejotzWNJ2d5wDr9naRs3y7An2W0La6x8LFhwkycg1y4EeGUjZIap9G+qjWc
	 ENWmBeQ7Soepru03LFx2uUPfl08jKUoVjdM6WvL6VCXC7KX6Bt3ugtkhvFpHxhYcx7
	 vRp3WaTwq6LgvrakjDb7wQ9QRvdg+GJQsY2VXxMSlQwDUa7RADhzozOMbq3gkywR06
	 xylAx6iiFOqeBhCds1umej9GO09lNBDbFyAbsr5aH1FS6DQcfjf7cBqsCpO0w4RdhF
	 n8s4hO3BWCTsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58AEBC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166885685433.27385.1706152286048280127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1efd6e8f24d64b0383f33cca48f74c7e69bec1c3e8fcd7e18f6f077cb29488c
Date: Sat, 19 Nov 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668856854

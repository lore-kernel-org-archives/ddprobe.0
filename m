Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E826AC0
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 14:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B5BC4339B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 14:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679064665;
	bh=/YGZIRW7wjbFWtsZbIWw4NUcgc+DSYoJE3f6uMenZPw=;
	h=To:Subject:From:Date:From;
	b=R/+iuou/T78waJLBVYogjI5aEigrTMFBx+LE/OeloxqQ5VQAqppoI7aUKZ9lt1aDq
	 aFxHv53oN5T9FWDNd0mmNtzLtgVGeDQ9GUpn1Ru2iJXUBmorxvpYmY+N5Q2a6xVzcl
	 6svX8lnJHv/iLSMy9FSzx1Gc+J0+sPwDx1rJvFxeg5hoT9oIeK2hVHQPWA+qIWHVfQ
	 K5hg+UwtPhJcjZunmQQeyG6rRKNpOw33oOfEGzMac4d0QgWizi9LVtzkz+2J9xLd4+
	 v0sAnsxB1SRpGVyzhxF1XePuK56T7wrtClWjyQH7wDnURWto+L81GKJb3SMIX+9Fcl
	 is8RipzUg6Aow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD757C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 14:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167906466576.28198.17669031157684303634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c84db5103cec2383175ef582633f53297956fee810ad70ffe849c1c2c58e9237
Date: Fri, 17 Mar 2023 14:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679064665

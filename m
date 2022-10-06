Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7873375
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F994C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665019854;
	bh=PB0t5XTYjKwOd+1EkfS0SmzIgXoV46bvhJuW4i0xmHA=;
	h=To:Subject:From:Date:From;
	b=bILA+Od8HNjqorlpKfzgE0/ymOYBzNnYO/KGz/ZEFvmgBJiSAIWgQ8pMQfsRAZq7v
	 z2pl5/eJBmZ64K4SIe1uns4YPU/yiWDPQrbkcu4PibMCeo+N1yex+9Lkl/WfqNEg8i
	 9NsShwYJ4sKiYGPjjuqQpfWLjV3h99YL4+hqm203UjGhLIAwcWJyPdo0jIJHcPm9NG
	 56RBS5gCSkgk5mYcchXqf460pzreHJJNAE9JiK+n8dDQT0KMZYmJvSnKquVe98F6Sg
	 wHpxapTJ1ipk+XJwqiXDwblExGzRKf5bAiVbyCekb5Q9kGjQWZrR360zLLYeoaccZp
	 4AWCRNgNaKZNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD41C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166501985333.16529.525495998070350069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b1de3c0c84d7a28690e29081b86498658e5247861a61a719c48577d3cf560ea
Date: Thu, 06 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665019853

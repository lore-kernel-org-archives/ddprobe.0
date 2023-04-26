Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57765C2F6
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 10:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB621C433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 10:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682504826;
	bh=zgu4PzNY5OOHBN8w/u9FPc8v3CFt+OuOlXhlKs3doMk=;
	h=To:Subject:From:Date:From;
	b=UN4aEU63EzvSviMkhUYtJamQeOi8zadSv82qZItxyjwZOb3Wg6nrGyYFAI1roKtwO
	 L5jjrJQn2serhFezCiAzvsyQXkbtsIvUYqxaIsjuyqOPt+GXbG/BDKR/OnPZpd07x7
	 NRzkGBXi3VGhjZqM+ywn4PUuXyQkhy7gSBcSEHv0z9XQbALJlCI/CdR4MZkNZXAQpf
	 gjB2svOa5ctGmjDmRtuN+ALtP28lLBX/WaVSq+/9TIqlbCFIJB46OnjmsXy5awEKqp
	 mZ2VgSDjYhxBemiE9jT6bkMwrtqK+qbd021ZhwOLo4zvuAlpXXBZCJueJp9ffXI4sV
	 Wc2SgEkxssoVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD648C77B60
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 10:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168250482576.17493.7646228434673526986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ff3a81fda6511537817c4bebbcd46a0b4b0c007f8f0cdfa4f1ea1e9ae61af4
Date: Wed, 26 Apr 2023 10:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682504825

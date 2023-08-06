Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650C51FAF
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 08:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DD7C433C7
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 08:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691308988;
	bh=RZIKKyCnifmey0TsgQi75npzJJF2+J0GlAvzhdEmZdo=;
	h=To:Subject:From:Date:From;
	b=Simt/Xlb5VFZoDYRDshe0r2ceka67Pr2glqad0yHNmWwxDPaN3ZF7kPR8WYGQp4mC
	 miYYSXO774kwU9JWu7ftRF3Smw2wPjpZG9c2JGYkW9nE6AHs2v9SUMIDdCpOtZ79jX
	 pMK4tLLMpct9l3CMyyJzKRr1bgPdQM+6rMQZ8hb7qzcMDNIyOANAo7DsNgf9nW2AoS
	 B3P9rzdrIYZHoJeana1vAJj5bjCFW1bDcHoUxY33O9wHwc+8wLbGg0RrbNhD+pUvFl
	 3E4U4OBSLNXMNmSmAhwLE4+oLWggcxFZ93mb17iFAHd+ExB7oe1ipg8Ns4FzY9iSs3
	 am7Cmn0llJxkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5696C0015E
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 08:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169130898866.31766.8669306381868689896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0dd0b5a8722d5bb137972aa6623f0871a23d86c0194f21a2252151a8ffdec25
Date: Sun, 06 Aug 2023 08:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691308988

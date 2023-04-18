Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABC5AFE6
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 18:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED332C433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 18:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681843866;
	bh=QqhXQnfVJxV3T5fRtv0gOlbkIODdJK13pKZJLpD6Res=;
	h=To:Subject:From:Date:From;
	b=NTciQi2ewB87PYEd7BFijf1dwFys/luPmXrHcmdmfqktqQmiMu41ff1MNjMaE9jcB
	 +QDxDBj6kfiaHVQ8nVWixhJPOaLI8rC8WHarPmeQTmqwI0ZkVuVGbhfO5F0jHj7zh7
	 aiaW30pwp42MUe8sh2kPsf1R/ag/hcAsk1b4NFdU41pYF3ZzmQocaDLL9KQCq/ilVe
	 v+d2glhnIKKSOXL0PvWg7vPzkmElNF/1lsxQkCbNzGLKOJaU9I/TZEWSiwhBRrCLXi
	 iXLP5mB0IhNf2I32nQTCtCMLYPpEhheYpkxESaKiQLdmeZ5lJh6lilsFmThnVPGziY
	 cLihxUsKMlKlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C208FC77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 18:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168184386577.24030.4739966709395533427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d65af5e0826252c9ce68b1bf30377e000bac25e4d2ff456746971a04f0e6ed
Date: Tue, 18 Apr 2023 18:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681843865
